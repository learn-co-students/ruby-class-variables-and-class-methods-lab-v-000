class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    @@count
  end

  def self.genres
    no_dups = []
    @@genres.each {|genre| 
      if no_dups.length == 0
        no_dups.push(genre)
      else
        no_dups.each {|no_dup_genre|
          if no_dup_genre != genre
            no_dups.push(genre)
          end
        }
      end
    }
    no_dups
  end

  def self.artists
    no_dups = []
    @@artists.each {|artist| 
      if no_dups.length == 0
        no_dups.push(artist)
      else
        no_dups.each {|unique_artist|
          if artist != unique_artist
            no_dups.push(artist)
          end
        }
      end
    }
    no_dups
  end

  def self.genre_count
    histogram = {}
    @@genres.each {|genre|
      if histogram.keys.include?(genre)
        histogram[genre] += 1
      else
        histogram[genre] = 1
      end
    }
    histogram
  end

  def self.artist_count
    histogram = {}
    @@artists.each {|artist|
      if histogram.keys.include?(artist)
        histogram[artist] += 1
      else
        histogram[artist] = 1
      end
    }
    histogram
  end

end






class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    unique_genre_array = []
    @@genres.each {|genre|
      if !unique_genre_array.include?(genre)
        unique_genre_array << genre
      end
    }
    unique_genre_array
  end

  def self.artists
    unique_artist_array = []
    @@artists.each {|artist|
      if !unique_artist_array.include?(artist)
        unique_artist_array << artist
      end
    }
  unique_artist_array
  end

  def self.genre_count
    genre_count = {}
    @@genres.each {|genres|
      if genre_count[genres] == nil
        genre_count[genres] = 1
      else
        genre_count[genres] += 1
     end
    }
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist|
      if artist_count[artist] == nil
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
      }
    artist_count
  end
end

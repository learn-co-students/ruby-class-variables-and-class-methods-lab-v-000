class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    gc = {}
    @@genres.each {|genre|
      if gc.has_key?(genre)
        gc[genre] += 1
      else
        gc[genre] = 1
      end
    }
    gc
  end

  def self.artist_count
    ac = {}
    @@artists.each {|artist|
      if ac.has_key?(artist)
        ac[artist] += 1
      else
        ac[artist] = 1
      end
    }
    ac
  end
end

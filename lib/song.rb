class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

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
    counted = {}
    @@genres.uniq.each{|gen|
      counted[gen] = @@genres.count(gen)
    }
    counted
  end

  def self.artist_count
    counted = {}
    @@artists.uniq.each{|ahtist|
      counted[ahtist] = @@artists.count(ahtist)
    }
    counted
  end

end

class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist #if @@artists.include?(artist) == false
    @@genres << genre #if @@genres.include?(genre) == false
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counts = {}
    @@genres.uniq.each {|g|
      counts[g] = @@genres.count(g)
    }
    counts
  end

  def self.artist_count
    counts = {}
    @@artists.uniq.each {|a|
      counts[a] = @@artists.count(a)
    }
    counts
  end


end

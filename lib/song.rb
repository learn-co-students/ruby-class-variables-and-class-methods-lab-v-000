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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    frequencies = {}
    @@genres.each {|g| frequencies[g] = @@genres.count(g)}
    frequencies
  end

  def self.artist_count
    frequencies = {}
    @@artists.each {|a| frequencies[a] = @@artists.count(a)}
    frequencies
  end


end

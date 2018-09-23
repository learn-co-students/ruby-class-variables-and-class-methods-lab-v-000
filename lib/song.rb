class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genre

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
    g_hash = {}
    @@genres.each {|g| g_hash[g] = @@genres.count(g)}
    g_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each {|a| a_hash[a] = @@artists.count(a)}
    a_hash
  end

end

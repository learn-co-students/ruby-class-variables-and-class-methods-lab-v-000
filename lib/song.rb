class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
    genres_out = Hash.new
    @@genres.uniq.each { |g| genres_out[g] = @@genres.count(g)}
    genres_out
  end

  def self.artist_count
    artist_out = Hash.new
    @@artists.uniq.each { |a| artist_out[a] = @@artists.count(a)}
    artist_out
  end

end

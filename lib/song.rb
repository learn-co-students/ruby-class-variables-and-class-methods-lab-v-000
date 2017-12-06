class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @@artists << artist
    @genre = genre
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
    result = Hash.new
    @@genres.uniq.map { |genre| result[genre] = @@genres.count(genre) }
    result
  end

  def self.artist_count
    result = Hash.new
    @@artists.uniq.map { |artist| result[artist] = @@artists.count(artist) }
    result
  end
end

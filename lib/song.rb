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
    genres = []
    @@genres.each { |genre| genres << genre if !genres.include?(genre) }
    genres
  end

  def self.artists
    artists = []
    @@artists.each { |artist| artists << artist if !artists.include?(artist) }
    artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each { |genre| genre_count[genre] = @@genres.count(genre)}
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each { |artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end

end

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq { |artist| artist }
  end

  def self.genres
    @@genres.uniq { |genre| genre }
  end

  def self.genre_count
    hash = Hash.new
    @@genres.each { |genre| hash.include?(genre) ? hash[genre] += 1 : hash[genre] = 1 }
    hash
  end

  def self.artist_count
    hash = Hash.new
    @@artists.each { |artist| hash.include?(artist) ? hash[artist] += 1 : hash[artist] = 1 }
    hash
  end

end

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq do |artist|
      artist
    end
  end

  def self.genres
    @@genres.uniq do |genre|
      genre
    end
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    genres_hash.tap { |hash| @@genres.each { |genre| hash[genre] += 1 } }
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    artist_hash.tap { |hash| @@artists.each { |artist| hash[artist] += 1} }
  end
  

end

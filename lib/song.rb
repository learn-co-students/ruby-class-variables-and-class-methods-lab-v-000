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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    test = Hash.new(0)
    @@artists.each { |artist| test[artist] += 1 }
    test
  end

  def self.genre_count
    test = Hash.new(0)
    @@genres.each { |genre| test[genre] += 1 }
    test
  end

end

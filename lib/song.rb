class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre
    @@genres << genre
    @name = name
    @artist = artist
    @@artists << artist
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
    genre_hash = Hash.new(0)
    @@genres.each do |i|
      genre_hash[i] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |i|
      artist_hash[i] += 1
    end
    artist_hash
  end

end

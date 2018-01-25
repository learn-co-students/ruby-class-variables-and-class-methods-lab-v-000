class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
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
    @@genres.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) do |hash, e|
      hash[e] += 1
      hash
    end
  end
end

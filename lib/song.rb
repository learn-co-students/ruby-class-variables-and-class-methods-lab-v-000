class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.genres
    genre_count.keys
  end

  def self.artists
    artist_count.keys
  end

  def self.genre_count
    typeCount(@@genres)
  end

  def self.typeCount(type)
    hash = {}
    type.each do |g|
      hash.keys.include?(g) ? hash[g] += 1 : hash[g] = 1
    end
    hash
  end

  def self.artist_count
    typeCount(@@artists)
  end

  def self.count
    @@count
  end

end

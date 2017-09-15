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
    @@genres << genre
    @@artists << artist
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
    genre_hash = {}
    @@genres.each do |x|
      genre_hash[x] = genre_hash.keys.count(x) + 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |x|
      artist_hash[x] = artist_hash.keys.count(x) + 1
    end
    artist_hash
  end

end

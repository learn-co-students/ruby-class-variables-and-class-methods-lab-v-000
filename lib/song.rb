

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # Increment @@count class var on creation of Song instance
    @@count += 1
    # add arguments to class variables
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
    @@genres.each do |genre|
      genre_hash[genre] = @@genres.count(genre) unless genre_hash.has_key?(genre)
    end
    genre_hash
  end

  def self.artist_count
    genre_hash = {}
    @@artists.each do |artist|
      genre_hash[artist] = @@artists.count(artist) unless genre_hash.has_key?(artist)
    end
    genre_hash
  end

end

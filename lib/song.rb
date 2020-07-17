require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
    @@count += 1
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
      if genre_hash.has_key?(x) == false
      genre_hash[x] = @@genres.count(x)
    end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |x|
      if artist_hash.include?(x) == false
        artist_hash[x] = @@artists.count(x)
      end
    end
    artist_hash
  end
end

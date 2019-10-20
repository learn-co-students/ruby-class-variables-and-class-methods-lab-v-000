require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist , :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |g|
      genre_hash.key?(g)? genre_hash[g] += 1 : genre_hash[g] = 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |a|
      artist_hash.key?(a)? artist_hash[a] += 1 : artist_hash[a] = 1
    end
    artist_hash
  end

end

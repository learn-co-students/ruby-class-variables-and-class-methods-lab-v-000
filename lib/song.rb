require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres  = []
  @@count   = 0

  def initialize(name, artist, genre)
    @name      = name
    @artist    = artist
    @@artists << @artist
    @genre     = genre
    @@genres  << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |x|
      artist_hash[x] += 1
    end
    artist_hash
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |x|
      genre_hash[x] += 1
    end
    genre_hash
  end
end

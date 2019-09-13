require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    self.save
  end

  def save
    @@artists << self.artist
    @@genres << self.genre
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
    @@genres.to_a.each { |e| genre_hash[e] += 1 }
    genre_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.to_a.each { |e| artists_hash[e] += 1 }
    artists_hash
  end

end

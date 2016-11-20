require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(a, b, c)
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count

  end

  def self.artist_count

  end

end

require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(a, b, c)
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres
  end


end

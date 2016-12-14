require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq  # returns a new array by removing duplicate values in self
  end

  def self.artists
    @@artists.uniq # https://ruby-doc.org/core-2.2.0/Array.html#method-i-uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |key, hash| #research for better understanding
      hash[key] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |key, hash|
      hash[key] += 1
    end
  end

end

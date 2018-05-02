
require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
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
    mycool_hash = Hash.new(0)
    mycool_hash.tap { |hash| @@genres.each { |genre| hash[genre] += 1 } }
  end

  def self.artist_count
    mysweet_hash = Hash.new(0)
    mysweet_hash.tap { |hash| @@artists.each { |artist| hash[artist] += 1 } }
    #binding.pry
  end
end

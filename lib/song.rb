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
    h = Hash.new(0)
    @@genres.each {|element| h[element]+=1}
    h = h.sort_by { |element, amount| amount}
    Hash[*h.flatten(1)]
  end

  def self.artist_count
    h = Hash.new(0)
    @@artists.each {|element| h[element]+=1}
    h = h.sort_by { |element, amount| amount}
    Hash[*h.flatten(1)]
  end


end

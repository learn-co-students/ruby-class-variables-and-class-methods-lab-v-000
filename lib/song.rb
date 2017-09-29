require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres << @genre if !@@genres.include?(@genre)
    @@genres
  end

  def self.artists
    @@artists << @artist if !@@artists.include?(@artist)#not doing anything. how to delete duplicates from array?
    @@artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
    end
  end
end

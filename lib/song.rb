require 'pry'
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre #if @@genres.include?(@genre) == false
    @@artists << @artist #if @@artists.include?(@artist) == false
  end



  def count
    @@count
  end

  def genres
    @@genres
  end

  def artists
    @@artists
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
    #binding.pry
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    new_h = Hash.new
    new_h = @@genres.group_by { |v| v}
    new_h.each do |key, value|
      new_h[key] = value.length
      #binding.pry
    end


    #binding.pry
  end

  def self.artist_count
    new_h = Hash.new
    new_h = @@artists.group_by { |v| v}
    new_h.each do |key, value|
      new_h[key] = value.length
      #binding.pry
    end


    #binding.pry
  end
end
require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    result = Hash.new
    @@genres.uniq.each do |number|
      result[number] = @@genres.count(number)
    end
    result
  end

  def self.artist_count
    result = Hash.new
    @@artists.uniq.each do |number|
      result[number] = @@artists.count(number)
    end
    result
  end

end

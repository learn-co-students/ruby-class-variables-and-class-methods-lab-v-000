require 'pry'

class Song
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    self.name = name
    @@artists << self.artist = artist
    @@genres << self.genre = genre
  end
  
  def self.count
    @@count
  end
  
  def Song.artists
    @@artists.uniq
  end
  
  def Song.genres
    @@genres.uniq
  end
  
  def Song.genre_count
    hash = Hash.new(0)
    @@genres.each{|key| hash[key] += 1}
    hash
  end

  def Song.artist_count
    hash = Hash.new(0)
    @@artists.each{|key| hash[key] += 1}
    hash
  end
  
end

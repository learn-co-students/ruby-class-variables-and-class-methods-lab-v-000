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
    result = {}
    @@genres.uniq.each do |genre|
      result[genre] = 0
    end
    @@genres.each do |genre|
      result[genre] += 1
    end
    result
  end
  
  def self.artist_count
    result = {}
    @@artists.uniq.each do |artist|
      result[artist] = 0
    end
    @@artists.each do |artist|
      result[artist] += 1
    end
    result
  end
    
  
    
end
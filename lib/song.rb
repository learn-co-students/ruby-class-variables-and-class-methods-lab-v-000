require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @@artists << artist 
    @@count += 1
    @genre = genre
    @@genres << genre
    
  end 
  
  def self.count
    @@count
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  #binding.pry
  def self.genres
    @@genres.uniq
  end 
  
  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genre,count| count[genre] += 1 }
  end 
  
  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,count| count[artist] += 1 }
  end 
end 

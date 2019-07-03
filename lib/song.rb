require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    
  end
  
  def self.count
    @@count 
  end
  
  @@genres = []
  
  def self.genres 
    @@genres.uniq
  end
  
  @@artists = []
  
  def self.artists 
    @@artists.uniq 
  end
    
  def self.genre_count 
    @@genres_hash = {}
    @@genres.uniq.each do |genre| 
       @@genres_hash[genre] = @@genres.count(genre)
    end
     @@genres_hash
  end 
  
  def self.artist_count
    @@artists_hash = {}
    @@artists.uniq.each do |artist| 
       @@artists_hash[artist] = @@artists.count(artist)
    end
     @@artists_hash
  end
    
    
    
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  


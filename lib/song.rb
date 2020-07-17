require 'pry'
class  Song 
  
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
    
    ghash = {}
    
    @@genres.each{|gtype|
      ghash[gtype] = @@genres.count(gtype)
    }
    #puts ghash
    return ghash
   
  end 
  
  def self.artist_count
    ahash = {}
    
    @@artists.each{|atype|
      ahash[atype] = @@artists.count(atype)
    }
    #puts ahash
    return ahash
  end 
  
end 
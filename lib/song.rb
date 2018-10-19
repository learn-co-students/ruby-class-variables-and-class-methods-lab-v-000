require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genres2 = []
  @@artists2 = []
  
  @@genres_counts = {}
  @@artists_counts = {}
  
  def initialize(name, artist, genre)
    
    @name = name
    @artist = artist 
    @genre = genre 
    
    @@artists << artist 
    @@genres << genre 
    @@count += 1 
  
    q = 0
    r = 0
    while r < @@artists2.size 
    if @@artists2[r] != artist   
      q += 1
      r += 1 
    else 
      r += 1 
    end 
    end 
    if @@artists2.size == q 
    @@artists2 << artist 
    end
    
    x = 0
    y = 0
    while y < @@genres2.size 
    if @@genres2[y] != genre  
      x += 1
      y += 1 
    else 
      y += 1 
    end 
    end 
    if @@genres2.size == x
      @@genres2 <<  genre
    end 
         

    if @@genres_counts.keys.include? genre 
      @@genres_counts[genre] += 1 
    else
      @@genres_counts[genre] = 1
    end 
    
    if @@artists_counts.keys.include? artist 
      @@artists_counts[artist] += 1 
    else
      @@artists_counts[artist] = 1
    end 
  end   
  
  
  def self.count
    @@count
  end 

  def self.artists 
    @@artists2 
  end
  
  def self.genres 
    @@genres2
  end 
  
  
  def self.genre_count 
    @@genres_counts
  end 
  
  def self.artist_count 
    @@artists_counts
  end 
  
  
end 

    
  
    
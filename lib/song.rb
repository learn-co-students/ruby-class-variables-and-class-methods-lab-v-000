require 'pry'

class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
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
    count_hash = {}
    
    @@genres.each do |genre| 
      if count_hash[genre] == nil 
        count_hash[genre] = 1 
      else 
        count_hash[genre] += 1 
      end
    end
    count_hash
  end  
  
  def self.artist_count
    count_hash = {}
    
    @@artists.each do |artist| 
      if count_hash[artist] == nil 
        count_hash[artist] = 1 
      else 
        count_hash[artist] += 1 
      end
    end
    count_hash
  end  

end  
#You will need to check to see if the hash already contains a key of a particular genre.
#If so, increment the value of that key by one, otherwise, create a new key/value pair.

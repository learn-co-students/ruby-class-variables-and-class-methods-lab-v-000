require 'pry'
class Song 
 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genre_count = {}

 
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre 
    @@artists << artist  
    #@@genre_count << genre
    
    @name = name
    @artist = artist
    @genre = genre
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
  
   @@genre_count << genres.collect { |genre| [genre, genre.count] }
  
     #binding.pry
     #genre_count = Hash[ ]
     
   
  end
  
end
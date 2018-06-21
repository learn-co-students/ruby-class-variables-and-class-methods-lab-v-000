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
  
  @@genres.collect do |genre|
      @@genre_count[genre] = true if (!@@genre_count[genre])
    end

  @@genre_count
  end
  
end
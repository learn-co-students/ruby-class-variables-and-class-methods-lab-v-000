require 'pry'

class Song 
    
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end

  def self.genres 
    @@genres.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.each do |genre, count|
      if genre.uniq
       @@genre_count[genre] =  @@genres.count
       end
       @@genre_count
    end
  end
end

  
  

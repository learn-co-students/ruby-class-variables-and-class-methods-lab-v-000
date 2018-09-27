require 'pry'

class Song
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    
    @@count += 1 
    @@genres.push(genre)
    @@artists.push(artist)
    
  end
  
  attr_accessor :name, :artist, :genre
  
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
   
  genre_list = @@genres.group_by{|genre| genre_count = genre} 
  
  genre_list.each do |genre, count|
    genre_list[genre] = count.length
  end
end 
  
  def self.artist_count
   
  artist_list = @@artists.group_by{|artist| artist = artist} 
  
  artist_list.each do |artist, count|
    artist_list[artist] = count.length
  end
end  
  
 
end

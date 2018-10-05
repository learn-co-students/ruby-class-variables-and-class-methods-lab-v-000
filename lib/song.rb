require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
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
  
  def self.artists
    @@artists.uniq
  end  
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count
    genre_list = {}
    @@genres.each do |genre|
      if genre_list[genre]
        genre_list[genre] += 1 
      else 
        genre_list[genre] = 1
      end
    end
    genre_list
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else 
        artist_count[artist] = 1 
      end 
    end 
    artist_count
  end 
end 


  # def self.genre_count
  #   genre_count = Hash.new 
  #   @@genres.each do |genre, x|
  #     if @@genres.include?(@genre) { |x| x + 1}
  #     else 
  #       genre_count[genre] = count 
  #     end
  #   end 
  #   genre_count
  # end
  
  # def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end
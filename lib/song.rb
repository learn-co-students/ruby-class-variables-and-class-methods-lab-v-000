require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << @genre 
    @@artists << @artist 
  end   
  
  def self.count
    @@count 
  end 
  
  def self.genres 
    @@unique_genres_array = @@genres.uniq  
    @@unique_genres_array 
  end 
  
  def self.artists
    @@unique_artists_array = @@artists.uniq  
    @@unique_artists_array 
  end 
  
  def self.genre_count
    @@genres.collect do |genre|
      counter = 1 
      if !@@genre_count.has_key?(genre)
        @@genre_count[genre] = counter
      elsif @@genre_count.has_key?(genre)
        @@genre_count[genre] = (counter += 1)
      end 
    end 
      @@genre_count
  end 
  
  def self.artist_count
    @@artists.collect do |artist| #loop through the @@artists Array
      counter = 1
      if !@@artist_count.has_key?(artist)
        @@artist_count[artist] = counter
      elsif @@artist_count.has_key?(artist)
        @@artist_count[artist] = (counter += 1)
      end
    end 
    @@artist_count 
  end 
end 
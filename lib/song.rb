require 'pry'

class Song 
  attr_reader :artist, :genre, :name 
 
  @@count = 0 
  
  @@genres = []
  
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count +=1 
    @@genres << self.genre
    @@artists << self.artist
    
  end
  
  def self.count
    @@count
  end 

  
  def self.genres
    genres_array = []
    @@genres.each do |genre|
      if genres_array.include?(genre) == false 
        genres_array << genre 
      end
    end 
    genres_array
  end
  
  def self.artists
    artists_array = []
    @@artists.each do |artist|
      if artists_array.include?(artist) == false 
        artists_array << artist 
      end
    end 
    artists_array
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.include?(genre) == false 
        genre_count[genre] = 1 
      else genre_count[genre] += 1 
    end
  end 
  genre_count 
end 
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.include?(artist) == false 
        artist_count[artist] = 1 
      else artist_count[artist] += 1 
    end
  end 
  artist_count 
end 
  
end
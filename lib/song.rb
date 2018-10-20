require 'pry'

class Song 

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre) 
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
  @artists_unique = []
  
  @@artists.each do |artist|
    if !@artists_unique.include?(artist)
      @artists_unique << artist
    end
  end
  
  @artists_unique 
  
end

def self.genres
    @genres_unique = []
  
  @@genres.each do |genre|
    if !@genres_unique.include?(genre)
      @genres_unique << genre
    end
  end
  
  @genres_unique 
end

def self.genre_count
  
  @genre_hash = {}
  #binding.pry # // @@genres_total = 34
    
  @@genres.each do |genre|
    if @genre_hash.key?(genre)
      @genre_hash[genre] += 1  
    else
      @genre_hash[genre] = 1 
    end
  end
  
  @genre_hash

end

def self.artist_count
  
  @artist_hash = {}
  
  @@artists.each do |artist|
    if @artist_hash.key?(artist)
      @artist_hash[artist] += 1 
    else
      @artist_hash[artist] = 1 
    end
  end
  
  @artist_hash

end

end #CLASS END 










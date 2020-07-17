require 'pry'
class Song 
  def initialize(name,artist,genre)
    @name= name 
    @artist= artist 
    @genre = genre 
    @@count += 1
    @@genres << genre 
    @@artists << artist 
  end 

 attr_accessor :name, :artist, :genre 

  @@count=0

 def self.count 
   @@count 
 end 

  @@genres = []  

  def self.genres
   @@genres.uniq 

  end 

  @@artists = []

  def self.artists
    @@artists.uniq 

  end 

  def self.genre_count
     
     genres_hash = {}

     @@genres.each do |genre|
        
        if genres_hash.has_key?(genre) == false 
          genres_hash[genre]=0
        end 
        
      genres_hash[genre] += 1
        
    end 
   genres_hash
  end 

  def self.artist_count

    artist_hash = {}

    @@artists.each do |artist|

      if artist_hash.has_key?(artist) == false 
        artist_hash[artist] = 0
      end 
   
     artist_hash[artist]+=1

    end 
   artist_hash
  end 

end 


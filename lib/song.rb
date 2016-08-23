
require 'pry'

class Song
  @@count =  0 #Class Variable 
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre 
 

 def initialize( name, artist, genre)  #Song class takes in 3 arguments: name, arist, genre 
  @name = name
  @artist = artist #Instance Variables 
  @genre = genre
  @@count  += 1 #EVERYTIME U CREATE A NEW OBJECT (INSTIANIATE A NEW OBJECT)  INCREMENT THE COUNT BY 1 
  @@artists.push(artist) # 
  @@genres.push(genre)

end 

def self.artists 
 @@artists.uniq #RETURNS A UNIQUE ARRAY. GET RID OF DUPLICATES 
end 

def self.genres
   @@genres.uniq
end

def self.count
  return @@count
end



def self.genre_count
   genre_count = {}

     Song.genres.each do |genre| ##creates a hash from genre array that will use  the gener as keys that will direct to # of songs for each genre 
      genre_count[genre] = @@genres.count(genre)
    end

    return genre_count
  end

  def self.artist_count
    artist_count = {}

    Song.artists.each do |artist| ##creates a hash from artist array that will use the artist as keys that will direct to # of songs for each artist 
      artist_count[artist] = @@artists.count(artist)
    end

   return  artist_count
  end
end





puts Song.count 
    










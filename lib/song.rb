require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  # @@artist_count = Hash.new
  
  def initialize (name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
   genre_hash = {}
   @@genres.each do |g|
     if !genre_hash.include?(g)
  #binding.pry
       genre_hash[g] = 1
    else
      genre_hash[g] += 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    
  end
  
end
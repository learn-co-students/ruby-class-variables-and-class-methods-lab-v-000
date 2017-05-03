require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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
     @@genres.uniq
   end 

   def self.genre_count
     hash = {}
     @@genres.collect do |g|
       if hash[g]
         hash[g] = 1 + 1
       else
         hash[g] = 1 
       end
     end
     hash
   end

   def self.artists
     @@artists.uniq
   end

   def self.artist_count
     artist_hash = {}
     @@artists.collect do |a|
       if artist_hash[a]
         artist_hash[a] = 1 + 1
       else
         artist_hash[a] = 1 
       end
     end
     artist_hash
   end

      
end
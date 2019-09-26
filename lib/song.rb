require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
   
  def initialize(name, artist, genre)
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
    uniq_artists = []
    uniq_artists = @@artists.uniq
  end
  
  def self.genres
    uniq_genres = []
    uniq_genres = @@genres.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    #binding.pry
      @@genres.each do |genre|
        if genre_hash[genre] #if this exists already
          genre_hash[genre] +=1
        else
          genre_hash[genre] = 1 
        end
      end
      genre_hash
  end
    
    def self.artist_count
      artist_hash = {}
      @@artists.each do |artist|
        if artist_hash[artist]
          artist_hash[artist] += 1 
        else
          artist_hash[artist] = 1 
        end
      end
      artist_hash
    end
          
end
  
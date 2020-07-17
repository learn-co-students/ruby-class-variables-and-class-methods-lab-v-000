require 'pry'

class Song 
attr_accessor :name, :artist, :genre

  @@count = 0 
  @@artists = []
  @@genres = []


    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
    
    # When calling a class method within an instance method, you have to use self.class; otherwise Ruby interpolates it as an instance of self
    
      @@genres << genre
      @@artists << artist 
  
      @@count += 1
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
      genre_count = Hash.new(0)
      @@genres.each do |genre|
        genre_count[genre] += 1
        end  
      genre_count
    end
  
    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each do |artist|
        artist_count[artist] += 1
        end  
      artist_count
    end

end

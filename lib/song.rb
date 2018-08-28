require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genre_count = Hash.new(0)
    @@genres.each { |genre_hold|
      genre_count[genre_hold] += 1
      #adds one to the key.. creates it if it doesn't exist at 1.. this is much better than my original idea of ifs
    }
    genre_count
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
     @@artists.each { |artist_hold|
      artist_count[artist_hold] += 1
      #adds one to the key.. creates it if it doesn't exist at 1.. this is much better than my original idea of ifs
    }
    artist_count
  end
end
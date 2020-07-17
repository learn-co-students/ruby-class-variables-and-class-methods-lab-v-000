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
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
    #binding.pry
  
  def self.count
    @@count
  end 
  
  def self.genres
    g_array = []
    @@genres.each {|g| g_array << g if !g_array.include? g}
    g_array
  end
  

  
  def self.artists
    a_array = []
    @@artists.each {|a| a_array << a if !a_array.include? a}
    a_array
  end 
  
  def self.genre_count
    g_hash = {}
    @@genres.each {|g| 
    num = g_hash[g] || 0
    g_hash[g] = num + 1}
    g_hash
  end
  
  def self.artist_count
    a_hash = {}
    @@artists.each {|a| 
    num = a_hash[a] || 0
    a_hash[a] = num + 1}
    a_hash
  end
  
end 
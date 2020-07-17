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
    @@genres << genre
    @@artists << artist
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
    genre_hash = @@genres.group_by{ |v| v }
    genre_hash.each { |k, v| genre_hash[k]=v.length}
  end
  
  
  
  def self.artist_count
    artist_hash = @@artists.group_by{ |v| v }
    artist_hash.each { |k, v| artist_hash[k]=v.length}
  end
  
end
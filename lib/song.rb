require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  
  def initialize(name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist
    @name=name
    @artist=artist
    @genre=genre
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
    genre_count_hash = {}
    @@genres.each do |value|
      genre_count_hash[value] ||= genre_count_hash[value]=0
      genre_count_hash[value] += 1
    end
    genre_count_hash
  end
  
  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |value|
      artist_count_hash[value] ||= artist_count_hash[value]=0
      artist_count_hash[value] += 1
    end
    artist_count_hash
  end
  
end

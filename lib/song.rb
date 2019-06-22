require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count+=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end
  
  def self.genres
    @@genres.to_set
    #binding.pry
  end
  
  def self.artists
    @@artists.to_set
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre]
        hash[genre] +=1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] +=1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end
end
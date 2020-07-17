require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@artists << self.artist
  @@genres << self.genre
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
  genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = genre_count.keys.count(genre)+1
    end
    genre_count
  end

def self.artist_count
  artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = artist_count.keys.count(artist)+1
    end
    artist_count
  end
end

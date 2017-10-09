require 'pry'

class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []


def initialize(name, artist, genre)
  #binding.pry
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << @artist
  @@genre << @genre
end


def self.count
  @@count
end


def self.genres
  @@genres.uniq
end

def self.artists
  #binding.pry
  @@artists.uniq
end

def self.genre_count
  #binding.pry
genre_count = {}
# @@genres => ["rap", "pop"]
#genres ==> ["rap", "pop"]
@genres.each do |genre|
  if genre_count[genre]
    genre_count[genre] += 1
  else
    genre_count[genre] = 1
  end
end
genre_count
end

  def self.artist_count
artist_count = {}
#@@genres => ["rap", "pop"]
#genres ==> ["rap", "pop"]
@@artists.each do |artist|
  if artist_count[artist]
    artist_count[artist] += 1
  else
    artist_count[artist] = 1
  end
end
artist_count
end
end
    

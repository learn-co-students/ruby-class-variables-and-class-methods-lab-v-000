
require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
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
  genre_count = {}

  @@genres.each do |genre|

    if genre_count[genre]
        genre_count[genre] += 1
    else genre_count[genre] = 1
    end
    end
    genre_count#  we encounter genre and its not in the hash then add to hash
    #  if genre is in the hash then add 1
  end


def self.artist_count
  #binding.pry

  artist_count = {}
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

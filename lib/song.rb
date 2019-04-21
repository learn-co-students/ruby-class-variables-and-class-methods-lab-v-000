require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre)
  @name = name
  @genre = genre
  @artist = artist


@@count +=1
@@genres << genre
@@artists << artist
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
  genre_count = {}
  @@genres.each do |genre|
      if genre_count[genre] #if genre is already present in the hash
          genre_count[genre] +=1 #skip over and go to the next artist to evaluate
      else
        genre_count[genre] = 1 #if genre doesn't exist, add genre to the hash to be returned
      end
    end
    genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
       artist_count[artist] +=1
    else
      artist_count[artist] = 1
    end
end
      artist_count
    end
end

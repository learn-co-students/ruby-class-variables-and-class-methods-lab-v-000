require 'pry'

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count #number of new songs
  @@count
end

def self.genres #array of genres, no dups
  @@genres.uniq
end

def self.artists #array of all artists, no dups
  @@artists.uniq
end

def self.genre_count #returns hash keys = genre, value = #song_genres
  song_genres = {}
  @@genres.each do |genre|
    if song_genres[genre]
      song_genres[genre] += 1
    else
    song_genres[genre] = 1
    end
  end
  song_genres
end

def self.artist_count #similar to genre_count above
  song_artists = {}
  @@artists.each do |artist|
    if song_artists[artist]
      song_artists[artist] += 1
    else
     song_artists[artist] = 1
    end
  end
  song_artists
 end
# end
#
#   end
end

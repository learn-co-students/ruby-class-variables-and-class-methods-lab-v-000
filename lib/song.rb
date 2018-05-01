#require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
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
  genres = {}
#binding.pry
  @@genres.each do |genre|
    if genres[genre]
      genres[genre] += 1
    else
      genres[genre] = 1
      end
    end
genres
end

def self.artist_count
  artists = {}
#binding.pry
  @@artists.each do |artist|
    if artists[artist]
      artists[artist] += 1
    else
      artists[artist] = 1
      end
    end
artists
end
end

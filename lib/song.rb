require 'pry'

class Song
  attr_accessor :name, :artist, :genre

    @@genres = []
    @@count = 0
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

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.artist_count
  artists_count = {}
  @@artists.each do |artist|
    if artists_count[artist]
      artists_count[artist] += 1
    else
      artists_count[artist] = 1
    end
  end
  return artists_count
end


def self.genre_count
  genres_count = {}
  @@genres.each do |genre|
    if genres_count[genre]
      genres_count[genre] += 1
    else
      genres_count[genre] = 1
end
end
return genres_count
end

end

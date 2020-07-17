require "pry"

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

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
      if genre_count.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

def self.artist_count
    song_count = {}
    @@artists.each do |artist|
      if song_count.include?(artist)
        song_count[artist] += 1
      else
        song_count[artist] = 1
      end
    end
    song_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

end

require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genre_counter = {}
    
    @@genres.each do |i|
      if genre_counter[i] == nil
        genre_counter[i] = 1
      else
        genre_counter[i] += 1
      end
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = {}

    @@artists.each do |i|
      if artist_counter[i] == nil
        artist_counter[i] = 1
      else
        artist_counter[i] += 1
      end
    end
    artist_counter
  end
  
end
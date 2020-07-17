require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

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
    counted = {}
    @@genres.each do |genre|
      if counted.has_key?(genre)
        counted[genre] += 1
      else
        counted[genre] = 1
      end
    end
    counted
  end

  def self.artist_count
    counted = {}
    @@artists.each do |artist|
      if counted.has_key?(artist)
        counted[artist] += 1
      else
        counted[artist] = 1
      end
    end
    counted
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end



end

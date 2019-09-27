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
    @@artists << @artist
    @@genres << @genre
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

    # count = 0
    h={}
    @@genres.each do |genre|
      if h.include?(genre)
        h[genre] += 1
      elsif h[genre] = 1
      end
    end
    h
  end

  def self.artist_count
    h={}
    @@artists.each do |artist|
      if h.include?(artist)
        h[artist] += 1
      elsif h[artist] = 1
      end
    end
    h
  end

end

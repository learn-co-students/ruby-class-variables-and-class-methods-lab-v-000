require 'pry'

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

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @genre_count = {}
    @@genres.each do |g|
      counter = @@genres.count(g)
      @genre_count[g] = counter
    end
    @genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @artist_count = {}
    @@artists.each do |a|
      counter = @@artists.count(a)
      @artist_count[a] = counter
    end
    @artist_count
  end

end

require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
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
    counts = Hash.new 0
    @@genres.each do |genre|
      counts[genre] += 1
    end
    counts
  end

  def self.artist_count
    counts = Hash.new 0
    @@artists.each do |artist|
      counts[artist] += 1
    end
    counts
  end

end

require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.to_a.uniq
  end

  def self.genres
    @@genres.to_a.uniq
  end

  def self.genre_count
    result = @@genres.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
  end

  def self.artist_count
    result = @@artists.reduce(Hash.new(0)) { |a, b| a[b] += 1; a }
  end

end

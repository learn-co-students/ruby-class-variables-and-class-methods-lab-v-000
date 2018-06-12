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
    @@genres << @genre
    @@artists << @artist
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
    h_genres = {}
    @@genres.map { |genre| h_genres.has_key?(genre) ? h_genres[genre] += 1 : h_genres[genre] = 1 }
    h_genres
  end

  def self.artist_count
    h_artists = {}
    @@artists.map { |artist| h_artists.has_key?(artist) ? h_artists[artist] += 1 : h_artists[artist] = 1 }
    h_artists
  end
end

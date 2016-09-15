require 'pry'

class Song

  @@artists = []
  @@count = 0
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name=name
    @artist=artist
    @genre=genre
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists.include?(artist) ? nil : unique_artists << artist
    end
    unique_artists.compact
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres.include?(genre) ? nil : unique_genres << genre
    end
    unique_genres.compact
  end

  def self.genre_count
    hash_genres = {}
    @@genres.each do |genre|
      hash_genres[genre] = @@genres.count(genre)
    end
    hash_genres
  end

  def self.artist_count
    hash_artists = {}
    @@artists.each do |artist|
      hash_artists[artist] = @@artists.count(artist)
    end
    hash_artists
  end
end

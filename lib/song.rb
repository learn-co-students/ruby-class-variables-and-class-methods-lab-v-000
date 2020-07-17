require "pry"

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

  def self.artists
    artists = []
    @@artists.each { |artist| artists << artist unless artists.include?(artist) }
    artists
  end

  def self.genres
    genres = []
    @@genres.each { |genre| genres << genre unless genres.include?(genre) }
    genres
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      genres.include?(genre) ? (genres[genre] += 1) : (genres[genre] = 1)
    end
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      artists.include?(artist) ? (artists[artist] += 1) : (artists[artist] = 1)
    end
    artists
  end

end

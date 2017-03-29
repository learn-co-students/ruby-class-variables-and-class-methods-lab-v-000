require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist =  artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    all_genres = {}
    @@genres.each do |genre|
      all_genres[genre] ? all_genres[genre] += 1 : all_genres[genre] = 1
    end
    all_genres
  end

  def self.artist_count
    all_artists = {}
    @@artists.each do |artist|
      all_artists[artist] ? all_artists[artist] += 1 : all_artists[artist] = 1
    end
    all_artists
  end

end

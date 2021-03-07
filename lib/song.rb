require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
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
    artists_unique = []
    @@artists.each do |artist|
      if artists_unique.include?(artist) == false
        artists_unique << artist
      end
    end
    artists_unique
  end

  def self.genres
    genres_unique = []
    @@genres.each do |genre|
      if genres_unique.include?(genre) == false
        genres_unique << genre
      end
    end
    genres_unique
  end
  
  def self.genre_count
    genre_count = {}
    self.genres.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    self.artists.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
  end
end
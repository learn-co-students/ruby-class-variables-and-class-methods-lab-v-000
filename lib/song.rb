require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    genre_array = []
    @@genres.each do |genre|
      if !(genre_array.include?(genre))
        genre_array << genre
      end
    end
    genre_array
  end

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      if !(artist_array.include?(artist))
        artist_array << artist
      end
    end
    artist_array
  end

  def self.genre_count
    genre_count = {}
    self.genres.sort.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    self.artists.sort.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
  end

end

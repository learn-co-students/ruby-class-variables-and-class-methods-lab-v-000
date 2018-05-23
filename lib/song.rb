require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@library = {}
  @@genreCounter = {}
  @@artistCounter = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@library[artist] == nil
      @@library[artist] = Hash.new
    end

    if @@library[artist][genre] == nil
      @@library[artist][genre] = []
    end

    unless @@library[artist][genre].include?(name)
      @@library[artist][genre] << name
    end

    unless @@artists.include?(artist)
      @@artists << artist
    end

    unless @@genres.include?(genre)
      @@genres << genre
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@library.each do |artist, genre|
      genre.each do |genre, song|
        unless @@genreCounter[genre] == nil
          @@genreCounter[genre] = Hash.new
        end
        @@genreCounter[genre] =+ song.size
      end
    end
    @@genreCounter
  end

  def self.artist_count
    @@library.each do |artist, genre|
      genre.each do |genre, song|
        unless @@artistCounter[artist] == nil
          @@artistCounter[artist] = Hash.new
        end
        @@artistCounter[artist] =+ song.size
      end
    end
    @@artistCounter
  end

end

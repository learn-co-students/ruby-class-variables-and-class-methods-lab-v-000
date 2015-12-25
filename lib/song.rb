require 'pry'

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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_list = Hash.new(0)
    @@genres.each do |genre|
      genre_list[genre] += 1
    end
    genre_list      
  end

  def self.artist_count
    artists_list = Hash.new(0)
    @@artists.each do |artist|
      artists_list[artist] += 1
    end
    artists_list
  end

end
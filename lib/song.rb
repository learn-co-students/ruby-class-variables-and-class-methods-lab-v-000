require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
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
    genre_numbers = { }
    @@genres.each do |genre|
      genre_numbers[genre] = @@genres.count(genre)
    end
   genre_numbers
  end

  def self.artist_count
    artist_numbers = { }
    @@artists.each do |artist|
      artist_numbers[artist] = @@artists.count(artist)
    end
    artist_numbers
  end

end

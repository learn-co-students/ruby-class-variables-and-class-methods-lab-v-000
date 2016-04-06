require 'pry'
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count+=1
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre


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
    genre_count = {}

    @@genres.each do |genre_name|
      #binding.pry
      genre_count[genre_name] = @@genres.count(genre_name) if !genre_count.has_key?(genre_name)
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |artist_name|
      #binding.pry
      artist_count[artist_name] = @@artists.count(artist_name) if !artist_count.has_key?(artist_name)
    end
    artist_count
  end




end

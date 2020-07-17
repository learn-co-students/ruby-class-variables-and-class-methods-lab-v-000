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

    @@genres << @genre
    @@artists << @artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    #binding.pry
    genre_list = []
    @@genres.each do |genre|
      genre_list << genre if !genre_list.include?(genre)
    end
    genre_list
  end

  def self.artists
    artist_list = []
    @@artists.each {|artist| (artist_list << artist) if !artist_list.include?(artist)}
    artist_list
  end

  def self.genre_count
    genre_list_counter = {}
    @@genres.each do |genre|
      genre_list_counter[genre] = 0  if !genre_list_counter.has_key?(genre)
      genre_list_counter[genre] += 1
    end
    genre_list_counter
  end

  def self.artist_count
    artist_list_counter = {}
    @@artists.each do |artist|
      artist_list_counter[artist] = 0  if !artist_list_counter.has_key?(artist)
      artist_list_counter[artist] += 1
    end
    artist_list_counter
  end

end

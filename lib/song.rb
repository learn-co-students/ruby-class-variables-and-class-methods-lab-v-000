require 'pry'

class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_counter = Hash.new 0
  @@artist_counter = Hash.new 0

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
    @@genres.uniq
  end

  def self.artists
    @@artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |i|
      @@genre_counter[i] += 1
    end
    @@genre_counter
  end

  def self.artist_count
    @@artists.each do |a|
      @@artist_counter[a] += 1
    end
    @@artist_counter
  end

end
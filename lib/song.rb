require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
    genre_count = {}
    @@genres.uniq.each do |i|
      genre_count[i] = @@genres.count(i)
    end
    genre_count
  end


  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |i|
      artist_count[i] = @@artists.count(i)
    end
    artist_count
  end


end





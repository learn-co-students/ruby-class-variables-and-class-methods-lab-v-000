require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre, :genres
  
  @@count = 0
  
  @@artists = []
  @@genres = []
  
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(song_name, song_artist, song_genre)
    @name, @artist, @genre = song_name, song_artist, song_genre
    @@count += 1
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
    @@genres.uniq.each do |item|
      @@genre_count[item] = @@genres.count(item)
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.uniq.each do |item|
      @@artist_count[item] = @@artists.count(item)
    end
    @@artist_count
  end
  
end

require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    # @@genres << genre unless @@genres.include?(genre)
    # @@artists << artist unless @@artists.include?(artist)
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
    
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end
  
  def self.artist_count
    all_artists = {}
    @@artists.each do |artist|
      if all_artists.has_key?(artist)
        all_artists[artist] += 1
      else
        all_artists[artist] = 1
      end
    end
    all_artists
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end
  
  def self.genre_count
    all_genres = {}
    @@genres.each do |genre|
      if all_genres.has_key?(genre)
        all_genres[genre] += 1
      else
        all_genres[genre] = 1
      end
    end
    all_genres
  end
  
end
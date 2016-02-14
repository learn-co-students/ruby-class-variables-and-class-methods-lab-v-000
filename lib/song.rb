require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre #unless @@genres.include?(genre)
    @@artists << artist #unless @@artists.include?(@artist)
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count 
  end

  def self.genres
    @@genres.uniq
  end

  # def self.genre_count
  #   genre_count = Hash.new(0) 
  #   @@genres.each do |genre|
  #     genre_count[genre] +=1
  #   end
  #   genre_count
  # end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genre, genre_count| genre_count[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist, artist_count| artist_count[artist] += 1 }
  end
end

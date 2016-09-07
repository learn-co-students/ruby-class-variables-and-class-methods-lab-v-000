require "pry"

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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end


  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |genre, count|
      count[genre] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, count|
      count[artist] += 1
    end
  end

end

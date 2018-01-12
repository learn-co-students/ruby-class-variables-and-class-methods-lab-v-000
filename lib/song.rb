require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    #count method, track number songs it creats, return total number of songs
    @@count
  end

  def self.artists # "self." makes it a class method
    #look up uniq method
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    test = Hash.new(0)
    @@genres.each { |genre| test[genre] +=1 }
    test
  end

  def self.artist_count
    test = Hash.new(0)
    @@artists.each { |artist| test[artist] +=1 }
    test
  end
end

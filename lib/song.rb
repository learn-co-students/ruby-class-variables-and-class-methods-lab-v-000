require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists= []
  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end


  def self.artists
    @@artists.uniq!


  end

  def self.genres
    @@genres.uniq!
  end
  def self.count
    @@count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each { |g| genre_count[g] = @@genres.count(g)}
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end

end

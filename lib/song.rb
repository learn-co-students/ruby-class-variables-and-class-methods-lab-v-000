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

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    g_count = Hash.new(0) #sets the default value for new keys to 0
    @@genres.each { |gen| g_count[gen] += 1 }
    g_count
  end

  def self.artist_count
    a_count = Hash.new(0)
    @@artists.each { |art| a_count[art] += 1 }
    a_count
  end
end

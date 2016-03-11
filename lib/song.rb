require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count +=1
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
    g_hash = Hash.new(0)
    @@genres.each do |x|
      g_hash[x] +=1
    end
    g_hash
  end
  
  def self.artist_count
    g_hash = Hash.new(0)
    @@artists.each do |x|
      g_hash[x] +=1
    end
    g_hash
  end

end
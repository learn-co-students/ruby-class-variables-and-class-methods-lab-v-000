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
    @@genres << @genre
    @@genre = @genre
    @@artists << @artist
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @@genre
  end

  def self.count
    @@count
  end
  
  def self.artists
  @@artists = @@artists.uniq
  end
  
  def self.genres
  @@genres = @@genres.uniq
  end

  def self.genre_count
      g_count = Hash.new(0)
      @@genres.each do |genre| 
      g_count[genre] += 1 
    end
    g_count
  end

  def self.artist_count
    a_count = Hash.new(0)
    @@artists.each do |artist|
      a_count[artist] += 1
    end
    a_count
  end
end

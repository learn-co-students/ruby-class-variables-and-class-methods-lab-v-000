require 'pry'
class Song
  attr_accessor :name, :genre, :artist
@@artists = []
@@genres = []
@@count = 0



  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end


  def self.artists
    @@artists.uniq
  end


def self.artist_count
  a_count = Hash.new 0

  @@artists.each do |key|
    a_count[key] += 1
  end
  a_count
end

def self.genre_count
  g_count = Hash.new 0

  @@genres.each do |key|
    g_count[key] += 1
  end
  g_count
end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
#binding.pry


  end
end

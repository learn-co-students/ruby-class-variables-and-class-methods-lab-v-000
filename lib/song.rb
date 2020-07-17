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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] = 0
    end
    @@genres.each do |genre|
      genre_hash[genre] = genre_hash[genre] +1
  end
  genre_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each do |a|
      a_hash[a] = 0
    end
    @@artists.each do |a|
      a_hash[a] = a_hash[a] + 1
  end
  a_hash
  end



end

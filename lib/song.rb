require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each {|x| genres_hash[x] ||= @@genres.count("#{x}")}
    genres_hash
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each {|x| artists_hash[x] ||= @@artists.count("#{x}")}
    # binding.pry
    artists_hash
  end
# binding.pry
end

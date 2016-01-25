require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
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

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres_hash = Hash.new(0)
    @@genres.each {|genre| genres_hash[genre] += 1}
    return genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each {|artists| artists_hash[artists] += 1}
    return artists_hash
  end
end
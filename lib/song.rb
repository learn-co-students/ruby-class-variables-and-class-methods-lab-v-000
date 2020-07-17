require "pry"

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
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_object = {}
    @@genres.group_by {|genre| genre}.each do |k,v|
      genre_object[k] = v.length
    end
    genre_object
  end

  def self.artist_count
    artist_object = {}
    @@artists.group_by {|artist| artist}.each do |k,v|
      artist_object[k] = v.length
    end
    artist_object
  end
end

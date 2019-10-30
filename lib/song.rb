require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  # Class level variables
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    returnArr = []
    @@genres.each do |genre|
      returnArr << genre if !returnArr.include?(genre)
    end
    returnArr
  end

  def self.artists
    returnArr = []
    @@artists.each do |artist|
      returnArr << artist if !returnArr.include?(artist)
    end
    returnArr
  end

  def self.genre_count
    count_entity(@@genres)
  end

  def self.artist_count
    count_entity(@@artists)
  end

  def self.count_entity(h)
    hash = {}
    h.each do |entity|
      hash.has_key?(entity) ? hash[entity] += 1 : hash[entity] = 1
    end
    hash
  end

end

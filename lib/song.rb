require 'set'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1

    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    result = []
    @@genres.each do |genre|
      result << genre if !result.include?(genre)
    end
    result
  end

  def self.artists
    result = []
    @@artists.each do |artist|
      result << artist if !result.include?(artist)
    end
    result
  end
  def self.genre_count
    result = {}
    @@genres.each do |genre|
      if result.has_key?(genre)
        result[genre] += 1
      else
        result[genre] = 1
      end
    end
    result
  end

  def self.artist_count
    result = {}
    @@artists.each do |artist|
      if result.has_key?(artist)
        result[artist] += 1
      else
        result[artist] = 1
      end
    end
    result
  end
end

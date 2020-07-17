require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    new_hash = {}
    num = 1
    @@genres.each do |value|
      if new_hash.include?(value)
        num += 1
        new_hash[value] = num
      else
        new_hash[value] = 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    num = 1
    @@artists.each do |value|
      if new_hash.include?(value)
        num += 1
        new_hash[value] = num
      else
        new_hash[value] = 1
      end
    end
    new_hash
  end
end

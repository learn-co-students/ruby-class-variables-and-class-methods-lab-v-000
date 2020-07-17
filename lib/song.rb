require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    @@genres = @@genres.group_by{|v| v }
    @@genres = @@genres.flat_map{|k, v| [k, v.size] }
    @@genres = Hash[*@@genres]
  end

  def self.artist_count
    @@artists = @@artists.group_by{|v| v}
    @@artists = @@artists.flat_map{|k, v| [k, v.size]}
    @@artists = Hash[*@@artists]
  end
end

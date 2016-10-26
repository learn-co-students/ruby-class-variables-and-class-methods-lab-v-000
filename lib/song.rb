require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @@genres << genre
    @artist = artist
    @@artists << artist
    @genre = genre
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
    Hash[@@genres.group_by{|x| x}.map{|k,v| [k, v.count]}]
  end

  def self.artist_count
    Hash[@@artists.group_by{|x| x}.map{|k,v| [k, v.count]}]
  end
end

#new_hash = Hash[@@genres.collect{|v| [v, self.genre_count(v)]}.flatten]

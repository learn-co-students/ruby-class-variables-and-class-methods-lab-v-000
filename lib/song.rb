# class Song
#   attr_accessor :name, :artists, :genre
#   attr_reader :artist
#
#   @@count = 0
#   @@genres = []
#   @@artists = []
#   @@genre_count = {}
#   @@artist_count = {}
#
#   def initialize(name, artist, genre)
#     @@count += 1
#     @@genres << genre
#     @artist = artist
#     @@artists << artist
#     @name = name
#     @genre = genre
#   end
#
#   def self.count
#     @@count
#   end
#
#   def self.artists
#     @@artists.uniq
#   end
#
#   def self.genres
#     @@genres.uniq
#   end
#
#   def self.genre_count
#     @@genres.each do |genre|
#       @@genre_count[genre] = @@genres.count(genre)
#       end
#     @@genre_count
#   end
#
#   def self.artist_count
#     @@artists.each do |artist|
#       @@artist_count[artist] = @@artists.count(artist)
#     end
#      @@artist_count
#   end
# end
require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    @@genres.uniq.each do |genre_name|
      @@genre_count[genre_name] = 0
    end
    @@genres.each do |genre_name|
      @@genre_count[genre_name] += 1
    end
    @@genre_count
  end

  def self.artist_count

    @@artists.uniq.each do |artist_name|
      @@artist_count[artist_name] = 0
    end
    @@artists.each do |artist_name|
      @@artist_count[artist_name] += 1
    end
    @@artist_count
  end
  
end

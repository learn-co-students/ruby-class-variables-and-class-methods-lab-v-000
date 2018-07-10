require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []

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
    @@genre_incidence = {}
    @@genres.each do |genre|
      @@genre_incidence[genre] ||= 0
      @@genre_incidence[genre] += 1
    end
    @@genre_incidence
  end

  def self.artist_count
    @@artist_incidence = {}
    @@artists.each do |artist|
      @@artist_incidence[artist] ||= 0
      @@artist_incidence[artist] += 1
    end
    @@artist_incidence
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end
end

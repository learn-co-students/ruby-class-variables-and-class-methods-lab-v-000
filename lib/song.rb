require 'pry'
class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    artists = @@artists.uniq
    artists
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres.uniq
    genres
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end

end

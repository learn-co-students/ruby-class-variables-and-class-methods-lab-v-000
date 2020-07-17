require 'pry'
class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    genre_histo = {}
    @@genres.each do |genre|
      if !genre_histo.key?(genre)
        genre_histo[genre] = @@genres.count(genre)
      end
    end
    return genre_histo
  end

  def self.artist_count
    arist_histo = {}
    @@artists.each do |artist|
      if !arist_histo.key?(artist)
        arist_histo[artist] = @@artists.count(artist)
      end
    end
    return arist_histo
  end
end

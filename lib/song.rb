require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genre_histo = {}
    @@genres.each do |genre|
      if genre_histo.keys.include?(genre)
        genre_histo[genre] += 1
      else
        genre_histo[genre] = 1
      end
    end
    genre_histo
  end
  def self.artist_count
    artist_histo = {}
    @@artists.each do |artist|
      if artist_histo.keys.include?(artist)
        artist_histo[artist] += 1
      else
        artist_histo[artist] = 1
      end
    end
      artist_histo
  end
end

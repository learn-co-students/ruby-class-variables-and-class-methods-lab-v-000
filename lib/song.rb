require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  @@genre_hash = {}
  @@artist_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

    if @@genre_hash.has_key?(genre)
      @@genre_hash[genre] += 1
    else
      @@genre_hash[genre] = 1
    end

    if @@artist_hash.has_key?(artist)
      @@artist_hash[artist] += 1
    else
      @@artist_hash[artist] = 1
    end
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
    @@genre_hash.reverse_each.to_h
  end

  def self.artist_count
    @@artist_hash.reverse_each.to_h
  end

end

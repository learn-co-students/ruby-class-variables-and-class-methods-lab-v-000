require 'pry'

class Song

  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.genre_count
    genre_count = {}
    number = 1
    @@genres.sort do |a, b|
      if a != b
        genre_count[a] = 1
        genre_count[b] = 1
      elsif a = b
        genre_count[a] = number += 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    number = 1
    @@artists.sort do |a, b|
      if a != b
        artist_count[a] = 1
        artist_count[b] = 1
      elsif a = b
        artist_count[a] = number += 1
      end
    end
    artist_count
  end

    def self.artists
      @@artists.uniq.compact
    end

  def self.genres
    @@genres.uniq.compact
  end

  def self.count
    @@count
  end

end

require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre

    @@count ||= 0
    @@count += 1

    @@artists ||= []
    @@artists << artist

    @@genres ||= []
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
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end
end

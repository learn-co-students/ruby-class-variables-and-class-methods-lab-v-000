require 'pry'

class Song
  attr_accessor :name, :artist, :genre

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

  def self.count
    @@count
  end

  def self.genres
    total_genres = @@genres.uniq
    total_genres
  end

  def self.artists
    total_artists = @@artists.uniq
    total_artists
  end

  def self.genre_count
    genre_count = {}
      @@genres.each do |genre|
        if genre_count[genre] == nil
          genre_count[genre] = 1
        else
          genre_count[genre] += 1
        end
      end
      genre_count
      end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] == nil
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end

end

require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres.uniq
  end

  def self.artists
    artists = @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |a|
      if artist_count[a]
        artist_count[a] += 1
      else artist_count[a] = 1
      end
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |g|
      if genre_count[g]
        genre_count[g] += 1
      else genre_count[g] = 1
      end
    end
    genre_count
  end

end

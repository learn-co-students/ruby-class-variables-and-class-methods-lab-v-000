require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}


  attr_accessor :name, :artist, :genre

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
    genres_unique = []
    @@genres.each do |widget|
      if genres_unique.include?(widget)
      else
      genres_unique << widget
      end
    end
    return genres_unique
  end

  def self.artists
    artists_unique = []
    @@artists.each do |widget|
      if artists_unique.include?(widget)
      else
      artists_unique << widget
      end
    end
    return artists_unique
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |widget|
      if genres_hash.has_key?(widget)
        genres_hash[widget] += 1
      else
        genres_hash[widget] = 1
      end
    end
    # binding.pry

    return genres_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |widget|
      if artists_hash.has_key?(widget)
        artists_hash[widget] += 1
      else
        artists_hash[widget] = 1
      end
    end
    # binding.pry

    return artists_hash
  end

end

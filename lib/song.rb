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
    @@genres << genre
    @@artists << artist
    @@count += 1
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
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash.has_key?(genre)
        genre_count_hash[genre] = (genre_count_hash[genre] + 1)
      else
        genre_count_hash[genre] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist_name|
      if artist_count_hash.has_key?(artist_name)
        artist_count_hash[artist_name] = (artist_count_hash[artist_name] + 1)
      else
        artist_count_hash[artist_name] = 1
      end
    end
    artist_count_hash
  end

end

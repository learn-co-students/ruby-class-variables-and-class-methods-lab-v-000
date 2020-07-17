require 'pry'
class Song
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

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    unique_genres_array = []
    @@genres.each do |genre|
      unique_genres_array << genre unless unique_genres_array.include?(genre)
    end
    unique_genres_array
  end

  def self.artists
    unique_artists_array = []
    @@artists.each do |artist|
      unique_artists_array << artist unless unique_artists_array.include?(artist)
    end
    unique_artists_array
  end

  def self.genre_count
    genre_histogram_hash = {}
    @@genres.each do |genre|
      if genre_histogram_hash.keys.include?(genre)
        genre_histogram_hash[genre] += 1
      else
        genre_histogram_hash[genre] = 1
      end
    end
    genre_histogram_hash
  end

  def self.artist_count
    artist_histogram_hash = {}
    @@artists.each do |artist|
      if artist_histogram_hash.keys.include?(artist)
        artist_histogram_hash[artist] += 1
      else
        artist_histogram_hash[artist] = 1
      end
    end
    artist_histogram_hash
  end


end

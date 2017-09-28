require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_hash = {}
  @@artist_hash = {}

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

  def self.artists
    artist_array = []
    @@artists.each do |artist|
      artist_array << artist unless artist_array.include?(artist)
    end
    artist_array
  end

  def self.genres
    genre_array = []
    @@genres.each do |genre|
      genre_array << genre unless genre_array.include?(genre)
    end
    genre_array
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_hash[genre] == nil
        @@genre_hash[genre] = 1
      else @@genre_hash[genre] += 1
      end
    end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_hash[artist] == nil
        @@artist_hash[artist] = 1
      else @@artist_hash[artist] += 1
      end
    end
    @@artist_hash
  end

end

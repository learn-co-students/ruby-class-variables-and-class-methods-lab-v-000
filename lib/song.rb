require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
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
      artists_unique = @@artists.uniq
      artists_unique
  end

  def self.genres
    genres_unique = @@genres.uniq
    genres_unique
  end

  def self.genre_count
    genre_count = {}
    additional_count = 0


    @@genres.each do |genre|
      if !genre_count.keys.include?(genre)
        genre_count[genre] = 1

      elsif genre_count.keys.include?(genre)
        additional_count += 1
        genre_count[genre] = additional_count + 1
      end
    end
    genre_count
  end


  def self.artist_count
    artist_count = {}
    additional_count = 0


    @@artists.each do |artist|
      if !artist_count.keys.include?(artist)
        artist_count[artist] = 1

      elsif artist_count.keys.include?(artist)
        additional_count += 1
        artist_count[artist] = additional_count + 1
      end
    end
    artist_count
  end
end

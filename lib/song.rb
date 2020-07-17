require "pry"
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |key|
      if genre_hash[key] = genre_hash[key]
        genre_hash[key] += 1
      else
        genre_hash[key] = 1
      end
    end
    genre_hash
    # binding.pry
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |key|
      if artist_hash[key] = artist_hash[key]
        artist_hash[key] += 1
      else
        artist_hash[key] = 1
      end
    end
    artist_hash
  end

end

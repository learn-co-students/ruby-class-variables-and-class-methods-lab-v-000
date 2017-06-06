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

    @@genres.push(@genre)
    @@artists.push(@artist)

    @@count+=1

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  #.genre_count will return the genre as the key and point
  # to the number of times.  I need to enumerate over
  # @@genres, because the #genres method returns a uniq
  # array of genres.

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |particular_genre|
      genre_hash[particular_genre]+=1

    end
      genre_hash.each do |key, value|
    end
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |particular_artist|
      artist_hash[particular_artist]+=1

    end
      artist_hash.each do |key, value|
    end
  end

end

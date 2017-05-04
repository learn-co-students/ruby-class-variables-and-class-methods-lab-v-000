require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  @@artists_hash = Hash.new(0)
  @@genres_hash = Hash.new(0)

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1

    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artist_count
    @@artists.each do |name|
      @@artists_hash[name] +=1
    end

    @@artists_hash
  end

  def self.genre_count
    @@genres.each do |name|
      @@genres_hash[name] +=1
    end

    @@genres_hash
  end


  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

end

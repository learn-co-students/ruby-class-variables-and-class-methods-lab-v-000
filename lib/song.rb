require 'pry'

class Song

  attr_reader :name, :artist, :genre


  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@songs<<name
    @@genres<<genre
    @@artists<<artist
    @@count += 1

  end

  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []

  def self.count
    @@count
  end

  def self.artists
    artists2 = []
    @@artists.each do |x|
      if artists2.include?(x)
        nil
      else
        artists2<<x
      end
    end
    return artists2
  end

  def self.genres
    genres2 = []
    @@genres.each do |x|
      if genres2.include?(x)
        nil
      else
        genres2<<x
      end
    end
    return genres2

  end

  def self.genre_count
    gcount = {}
    @@genres.each do |x|
      if gcount.has_key?(x)
        gcount[x] += 1
      else
        gcount[x] = 1
      end
    end
    return gcount
  end

  def self.artist_count
    acount = {}
    @@artists.each do |x|
      if acount.has_key?(x)
        acount[x] += 1
      else
        acount[x] = 1
      end
    end
    acount

  end



end

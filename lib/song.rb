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
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gencount = {}
    @@genres.each do |genre|

      if gencount.has_key?(genre)
        gencount[genre] += 1
      else
        gencount[genre] = 1
      end

    end
    return gencount
  end


  def self.artist_count
    gencount = {}
    @@artists.each do |artist|

      if gencount.has_key?(artist)
        gencount[artist] += 1
      else
        gencount[artist] = 1
      end

    end
    return gencount
  end
end

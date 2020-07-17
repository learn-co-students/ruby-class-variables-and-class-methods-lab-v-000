require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    g_hash = {}
    @@genres.each do |genre|
      if g_hash.keys.include?(genre) then g_hash[genre]+=1
      else g_hash[genre] = 1
        # binding.pry
      end
    end
    g_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each do |artist|
      if a_hash.keys.include?(artist)
        a_hash[artist]+=1
      else a_hash[artist] = 1
      end
    end
    a_hash
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@genres << genre
    @@artists << artist

  end



end

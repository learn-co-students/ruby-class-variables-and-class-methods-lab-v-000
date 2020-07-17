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
    @@count
  end

  def self.genres
    new_array = []
    @@genres.each.map do |genre|
      new_array << genre
    end
    new_array.uniq
  end

  def self.artists
    new_array = []
    @@artists.each.map do |artist|
      new_array << artist
    end
    new_array.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
     if genre_hash[genre]
       genre_hash[genre] += 1
     else
       genre_hash[genre] = 1
    end
   end
    #binding.pry
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
     if artist_hash[artist]
       artist_hash[artist] += 1
     else
       artist_hash[artist] = 1
    end
   end
    #binding.pry
    artist_hash
  end

end




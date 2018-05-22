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
    @@count +=1
    @@genres << genre
    @@artists << artist
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

  def self.genre_count
    genre_hash = {}
    v = 1
    allgenres = {}
    @@genres.each do |genre|
      #binding.pry
      if genre_hash.has_key?(genre)
        v = genre_hash[genre] +=1
        genre_hash[genre] = v
      else
        #genre_hash = {genre => 1}
        genre_hash[genre] = 1
      end
    end
    genre_hash.each do |key, value|
      allgenres[key] = value
      puts allgenres
    end
  end

  def self.artist_count
    artistlist = {}
    number_of_artists = 1
    @@artists.each do |artist|
      if artistlist.has_key?(artist)
        number_of_artists += 1
        artistlist[artist] = number_of_artists
      else
        artistlist[artist] = 1
      end
      #binding.pry
    end
    artistlist.each {|key, value| artistlist[key] = value}
  end

end

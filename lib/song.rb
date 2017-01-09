require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists=[]
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    #binding.pry#
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end
  
  def self.genres
    unique_genres_array = []
    @@genres.each do |genre|
      unique_genres_array << genre unless unique_genres_array.include?(genre)
    end
    unique_genres_array
  end

  def self.artists
    unique_artists_array = []
    @@artists.each do |artist|
      unique_artists_array << artist unless unique_artists_array.include?(artist)
    end
    unique_artists_array
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
    artist_hash
  end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
closer = Song.new("Closer", "NIN", "electronic")
poop = Song.new("Poop", "Jay-Z", "rap")

Song.artists
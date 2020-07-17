require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count=0 # class variable
  @@artists=[] #class variable empty array
  @@genres=[] # Class variable emypty array

  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @artist_count = { }
      @@count+=1 #increment count variable by 1
      @@genre_count = Hash.new {}
      @@artists << artist
      @@genres << genre
  end

  def class_variable_get(artists, genres)
      @@artists = artists
      @@genres = genres
  end

  def artists # artists class method
    @artists=artist
    artists << artist
  end

  def add_name(artist,genre)
    self.count[genre] << artist
  end

  def self.count # count class method
    @@count #returns the total number of songs created
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres # genres class method
    @@genres.uniq
  end

  def self.genre_count
	genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end

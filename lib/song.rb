require "pry"
class Song

  attr_accessor :name, :artist, :genre

  #class variables
  @@count = 0
  @@genres = []
  @@artists =[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << @artist
    @@genres << @genre
  end

  #class methods
  #returns the total number of songs
  def self.count
    @@count
  end

  #return an array of all genres with no duplicates
  def self.genres
    @@genres.uniq!  #returns an array of all the artists of existing genres excluding duplicates
  end

  def self.artists
    @@artists.uniq! #returns an array of all the artists of existing songs excluding duplicates
  end

  def self.genre_count
    @genres_hash = Hash.new(0) #to avoid having the hash default to 0 with hash={} make it equal to 0
    @@genres.each do | genre_name |
      @genres_hash[genre_name]+=1 #add a key and a value at teh same time.
    end
    @genres_hash
  end

  def self.artist_count
    @artists_hash = Hash.new(0) #to avoid having the hash default to 0 with hash={} make it equal to 0
    @@artists.each do | artist_name |
      @artists_hash[artist_name]+=1 #add a key and a value at the same time.
    end
    @artists_hash
  end

end

require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre
  #attr_accessor :count

  def initialize(name,artist,genre)
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


  def self.artists
    @@artists.uniq
 end

  def self.genres
    @@genres.uniq
  end

  #You will need to iterate over the `@@genres` array and populate a hash with the key/value pairs.
  #You will need to check to see if the hash already contains a key of a particular genre.
  #If so, increment the value of that key by one, otherwise, create a new key/value pair.

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      #where is the line of code that assigns the key to the hash?
      if genre_count[genre]
        genre_count[genre]+= 1
        else genre_count[genre] = 1
        end
      end
    genre_count
  end

def self.artist_count
  artist_count = {}
  @@artists.each do | artist |
    #where is the line of code that assigns the key to the hash?
    if artist_count[artist]
      artist_count[artist]+=1
    else artist_count[artist] = 1
    end
  end
  artist_count
end







end

require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres  << genre
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

def self.genre_count
  genre_count = Hash.new(0) 
  @@genres.each do |gkey|
    genre_count[gkey] += 1
  end
  genre_count
end
#Hashes have a default value that is returned when accessing 
#keys that do not exist in the hash. If no default is set nil is used. 
#You can set the default value by sending it as an argument to ::new:
#if all the values are starting at 0, each time i add a genre as a key "gkey",
#the value will be increase by 1

def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do |akey|
    artist_count[akey] += 1
  end
  artist_count
end
#iterate over genres array
#populate a hash with key value pairs

end

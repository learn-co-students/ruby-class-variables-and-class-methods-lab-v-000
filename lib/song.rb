require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  #these are our class vars which keep track of the entire class' worth of count, artists, and genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  #We are initializing with name, artist, and genre, but also incrementing our count of songs by one for each instance.  Also we are adding the genre and artist in the initialize method to the class methods.

def self.count
  @@count
end
#when typing Song.count it will give us the current count of instances, or how many songs we have created so far.

def self.artists
  @@artists.uniq
end
#This method shows us the unique artist class method


def self.genres
  @@genres.uniq
end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    #iterates over the @@artists array
  if artist_count[artist]
    #if the artist exists
    artist_count[artist] += 1 
    #increment by one
  else
    artist_count[artist] = 1 
    #if the artist already exists, don't increment
  end
end
artist_count
#returns artist_count
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

end
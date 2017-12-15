require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0 #class variable for total count of songs created
  @@artists = [] #class variable for array containing all the artists to all the songs created
  @@genres = [] #class variable for array with all the genres to the songs created

  def initialize(name, artist, genre)
    #when you create new class you have to add the song name, artist, and genre
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1 #each time you create a new class this add to the class variable count
    @@artists << artist #each time you create a class this adds the artist to the class variable artist
    @@genres << genre #each time you create a class this adds a genre to the class variable genre
  end

  def self.count
    @@count
  end

  def self.artists
    array_of_artists = []
    @@artists.each do |artist|
      #Go through the @@artists array to see if there are multiple of the same artist
      #see if array includes the artist already
      #if it does return the array_of_artists
      #if it doesn't add the artist to the array
      if array_of_artists.include?(artist) ? array_of_artists : array_of_artists << artist
      end #if/else
    end #each
    return array_of_artists #return array with no duplicates
  end #method

  def self.genres
    array_of_genres = []
    @@genres.each do |genre|
    if array_of_genres.include?(genre) ? array_of_genres : array_of_genres << genre
    end #if/else
  end #each
  return array_of_genres
end #method

def self.genre_count
  #I created a hash called genre_count.
  #We iterate through the genres class variable, find if the genre is in the hash, we add it to the hash with the value of 1
  #if it isn't, and we add 1 to the value of the genre if it's already in the hash.
  #We end by returning the hash genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count.include?(genre) ? genre_count[genre] += 1 : genre_count[genre] = 1
    end #if
  end #each
  return genre_count
end #method

def self.artist_count
  #I created a hash called artist_count. We iterate through the artists class variable, we add the value one to he artist key 
  #of the hash if the artist is in it, but if the artist isn't in the hash we add the key and the value of 1. 
  #We end by returning the hash artist_count.
  artist_count = {}
  @@artists.each do |artist|
  if artist_count.include?(artist) ? artist_count[artist] += 1 : artist_count[artist] = 1
    end #if
  end #each
  return artist_count
end #method

end #class

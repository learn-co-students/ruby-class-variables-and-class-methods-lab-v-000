#Define Song Class that takes 3 attr_accessors: name, artist, genre
#require 'pry'
class Song

  attr_accessor :name,:artist,:genre

  @@count = 0
  @@genres = [] #empty array of genres
  @@artists = [] #empty array of artists

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artists << artist #when a new song is initialize, artist shovel to array
    @@genres << genre #when a new genre is intialized, genre shovel to array

  end

  #write class method .count that returns total number songs created

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq #removes duplicate genres
  end

  def self.genres
    @@genres.uniq #remove duplicate genres
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre| #take each key value and increment genre value by 1 with unique key
      if genre_count[genre] == nil
        genre_count[genre] =1
      else
        genre_count[genre] +=1
      end
    end
      genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist| #take each artist and increment artist by 1
      if artist_count[artist] == nil
        artist_count[artist] =1
      else
        artist_count[artist] +=1
      end
    end
      artist_count
  end

end

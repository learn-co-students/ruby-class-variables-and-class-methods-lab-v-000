require 'pry'
class Song
#tracks number of songs creates
  attr_accessor :name, :artist, :genre
  @@count = 0 #class song variable created
  #def self.count
  #  @@count +=1
  #end
  @@genres = [] #class song variable created
  @@artists = []
  def initialize(name,artist,genre)
    @artist   = artist#what is the data type here?
    @genre    = genre#what is the data type here?
    @name     = name#songs' names
    @@count +=1
    @@artists << @artist
    @@genres << @genre
    #@@names  << @name
  end
  #def initialize
  #  @@genre = Array.new
  #end
  def self.genres
    #binding.pry
    @@genres.uniq
  end
  def self.artists
    #binding.pry
    @@artists.uniq
  end
  def self.count
    #binding.pry
    @@count
  end
  def self.genre_count
    total_genre = {}
    #uniq_array = @@genres.uniq
    #binding.pry
    @@genres.each do|genre|#no key and values for @@genres = hash
      if total_genre[genre]#if a total_genre[genre] exists is truthy
        total_genre[genre] +=1# it adds 1 to the count
        #binding.pry
      else
        total_genre[genre] = 1 # start count @ 1, since [genre] is false
        #binding.pry #&& AUTOCREATES hash key/value pair
      end
    #binding.pry
    end
    total_genre
  end
  def self.artist_count
    total_artist = {}
    #uniq_array = @@genres.uniq
    #binding.pry
    @@artists.each do|artist|#no key and values for @@genres = hash
      if total_artist[artist]#if a total_genre[genre] exists is truthy
        total_artist[artist] +=1# it adds 1 to the count
        binding.pry
      else
        total_artist[artist] = 1 # start count @ 1, since [genre] is false
        binding.pry #&& AUTOCREATES hash key/value pair
      end
    binding.pry
    end
    total_artist
  end
end

#Song.new(name, artist, genre)

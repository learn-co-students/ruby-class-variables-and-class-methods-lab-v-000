require 'pry'

class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

   def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    Hash[*@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]

  end

  #try something like this


#class Artist

#attrs go here

#@@artists 

#initialize method

##will add name to @@artists if it doesn't include name

    


  def self.artist_count
    Hash[*@@artists.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  end






#name
#artist
#genre
#track the number of songs that it creates/count method
#Song Class show us all existing artists of existing songs
#Song Class to show us all genres of existing class
#genre_count
#artist_count



end
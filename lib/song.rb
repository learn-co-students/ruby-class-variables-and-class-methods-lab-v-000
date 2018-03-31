require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (song, artist, genre)
    @@count +=1 
    @@genres << genre 
    @@artists << artist 
    @name = song
    @artist = artist
    @genre = genre
    
  
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  
  end 
  
  def self.genre_count
   genre_list = {}
    @@genres.map do |genres|
    #binding.pry 
      if genre_list[genres]
         genre_list[genres] += 1
      else
         genre_list[genres] = 1
      end
    end
  genre_list
end


def self.artist_count 
  artist_list = {}
  @@artists.map do |artists|
    if artist_list[artists]
      artist_list[artists] += 1 
    else 
      artist_list[artists] = 1 
    end
  end 
  artist_list
end
end


















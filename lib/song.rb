require 'pry'
# require 'pry-nav'

class Song
#------------------------------------------------------------------------------------------------
# basic setter / getters / initialize
#------------------------------------------------------------------------------------------------
attr_accessor :name, :artist, :genre

#class variables initialized
@@count = 0
@@artists = []
@@genres = []
@@library = {}


def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1


  #to make it unique just add: if @@artists.empty?  || !@@artists.include?(artist)

    @@artists << artist


  #to make it unique just add: if @@genres.empty? || !@@genres.include?(genre)
    @@genres << genre

  #builds library hash of each song/artist/genre combo


end



#------------------------------------------------------------------------------------------------
# class methods
#------------------------------------------------------------------------------------------------

def self.count
return @@count
end

def self.artists
  return @@artists.uniq
end

def self.genres
  return @@genres.uniq
end


def self.genre_count
@@genre_hash = {}
@@genres.uniq.each {|current_genre|
#for each unique genre I find
#create a key in the hash
binding.pry
@@genre_hash[current_genre]= 0

                        #for each unique genre, go through obj and count
                        #all songs
                        ObjectSpace.each_object(Song) {|song|
                                                        binding.pry
                                                        if song.genre == current_genre
                                                        @@genre_hash[current_genre] += 1
                                                        end
                                                      }


                }
return @@genre_hash


end


end

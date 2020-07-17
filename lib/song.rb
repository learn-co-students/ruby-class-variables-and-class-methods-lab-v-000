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

    @@genres << genre
    @@artists << artist

    @@count = @@count +  1
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
genre_hash = {}
 @@genres.uniq.each do |genre|
   #binding.pry
  genre_hash[genre] = @@genres.count{|x| x == genre}
  end
genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.uniq.each do |artist|
    artist_hash[artist] = @@artists.count{|x| x == artist}
  end
  artist_hash
end









end

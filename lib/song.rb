require 'pry'

class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
@genre_count = {}
@artist_count = {}

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists<< artist
  @@genres << genre 
end # of initialize

def self.count
  @@count
end # of count


def genre
  @genre
end # of genre


def self.genres
  @@genres.uniq!
end # of self.genres


def self.genre_count
  @@genres.each do |genre|
    if @genre_count[genre] != nil 
      @genre_count[genre] += 1
    else 
      @genre_count[genre] = 1 
    end # of if 
  end # of do
  @genre_count
end


def self.artists
  @@artists.uniq!
end # of artist


def self.artist_count
  @@artists.each do |artist|
    if @artist_count[artist] != nil
       @artist_count[artist] += 1
    else
      @artist_count[artist] = 1
    end # of if 
  end # of do
  @artist_count  
end # of artist_count

end # of class 
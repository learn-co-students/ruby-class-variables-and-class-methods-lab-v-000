require 'pry'

class Song

attr_accessor :name
attr_accessor :artist
attr_accessor :genre

@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
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
    genre_count = {}
    @@genres.each do |x| 
      if genre_count[x]
        genre_count[x] += 1
      else
        genre_count[x] = 1
      end    
    end
    genre_count
  end

  def self.artist_count
    artist_count ={}

    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else 
        artist_count[artist] = 1
      end  
    end
    artist_count
  end

end












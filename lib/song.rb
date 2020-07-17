require 'pry'

class Song

@@count = 0
@@artists = []
@@genres = []

attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count +=1
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

  def self.artist_count
    artist_count = {}
    @@artists.find_all {|artist| artist_count.store(artist, @@artists.count(artist) ) }
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_count = {}
    @@genres.find_all {|genre| genres_count.store(genre, @@genres.count(genre) ) }
    genres_count
  end

end

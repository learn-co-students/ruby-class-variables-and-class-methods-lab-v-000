require 'pry'
class Song
  
  attr_accessor :genre, :artist, :name
  @@count = 0
  @@genres = []
  @@names = []
  @@artists = []
  @songs_each_genre_hash = {}
  @songs_each_artist_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.artists
    artistArray = @@artists.uniq
    artistArray
  end
  
  def self.genre_count
    @@genres.each do |genre|
      if !@songs_each_genre_hash.key?(genre)
        @songs_each_genre_hash[genre] = 1
      else
        @songs_each_genre_hash[genre] += 1
      end
    end
    @songs_each_genre_hash
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if !@songs_each_artist_hash.key?(artist)
        @songs_each_artist_hash[artist] = 1
      else
        @songs_each_artist_hash[artist] += 1
      end
    end
    @songs_each_artist_hash
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genreArray = @@genres.uniq
    genreArray
  end
  
end
require 'pry'

# #new
#     takes in three arguments: a name, artist and genre
#   #name
#     has a name
#   #artist
#     has an artist
#   #genre
#     has a genre
#   class variables
#     has a class variable, @@count
#     has a class variable, @@artists, that contains all of the artists of existing songs
#     has a class variable, @@genres, that contains all of the genres of existing songs
#   .count
#     is a class method that returns that number of songs created
#     .artists
#    is a class method that returns a unique array of artists of existing songs
#  .genres
#    is a class method that returns a unique array of genres of existing songs
#  .genre_count
#    is a class method that returns a hash of genres and the number of songs that have those genres
#  .artist_count
#    is a class method that returns a hash of artists and the number of songs that have those artists


class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_hash = {}
    #binding.pry
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_count_hash = {}
    #binding.pry
    @@artists.each do |artist|
      if artist_count_hash[artist]
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    artist_count_hash
  end

end

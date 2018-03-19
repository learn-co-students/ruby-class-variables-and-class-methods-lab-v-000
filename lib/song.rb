require 'pry'

class Song
  attr_accessor :name
  attr_accessor :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @@artists << artist
    @artist = artist
    @@genres << genre
    @genre = genre
    @@count += 1
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

  def self.genre_count #returns hash:  Hash[genre] = number_of_songs
    @@genres.each { |genre| #take array of genres, use each individual genre
      @@genre_count[genre] = @@genres.count(genre)#add element(genre) to hash and use count of specified genre (repeats == additional songs)
    }
    @@genre_count
  end

  def self.artist_count #returns hash:  Hash[artist] = number_of_songs
    @@artists.each { |artist| #take array of artists, use each individual artist
      @@artist_count[artist] = @@artists.count(artist)#add element(artist) to hash and use count of specified artist (repeats == additional songs)
      # => hash[artist] = (number_of_repeated_listings_of_artist)
    }
    @@artist_count
  end
end

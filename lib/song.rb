require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

    def initialize(name, artist, genre)
      @@count += 1
      @@genres << genre
      @@artists << artist
      @name = name
      @artist = artist
      @genre= genre
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

    def self.genre_count #returns hash of genres and the numbers of songs that have those genres
      # return => {"rap" => 5, "rock" => 1, "country" => 3}
      genre_count = {}
      @@genres.each do |genre|
      if !genre_count[genre] #creating new key value pair
          genre_count[genre] = 1
      else
        genre_count[genre]+= 1
      end
    end
    genre_count
  end

    def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if !artist_count[artist]
          artist_count[artist] = 1
        else
          artist_count[artist]+= 1
        end
      end
      artist_count
    end

  end

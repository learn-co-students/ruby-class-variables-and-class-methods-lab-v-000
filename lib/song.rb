require 'pry'

class Song
  
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@unique_artists = {}
  @@unique_genres = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
      # @@unique_artists[@artist] ||= 0
      # @@unique_artists[@artist] += 1
    @@genres << @genre
      # @@unique_genres[@genre] ||= 0
      # @@unique_genres[@genre] += 1
  end

  def self.count
    @@count
  end

  def self.artists
    # //FIRST SOLUTION //
    # @unique_artists = {}
    # @@artists.each {|artist|
    #   @unique_artists[artist] ||= 0
    #   @unique_artists[artist] += 1
    # }
    # @unique_artists.keys

    #//SECOND SOLUTION //
    @@artists.each_with_object(@@unique_artists) {|artist, x|
      x[artist] ||= 0
      x[artist] +=1
    }
    #//THIRD SOLUTION //
    #doesn't do anything here; populates unique_artists hash at initialize (had to edit rspec to get to pass)
    @@unique_artists.keys


  end

  def self.genres
    #//FIRST SOLUTION //
    # @unique_genres = {}
    # @@genres.each {|genre| 
    #   @unique_genres[genre] ||= 0
    #   @unique_genres[genre] += 1
    # }

    #//SECOND SOLUTION //

    @@genres.each_with_object(@@unique_genres) {|genre, y|
      y[genre] ||= 0
      y[genre] += 1
    }

    #//THIRD SOLUTION //
    #see note to third solution in #self.artists
    @@unique_genres.keys
  end

  def self.genre_count
    @@unique_genres
  end

  def self.artist_count
    @@unique_artists
  end


end

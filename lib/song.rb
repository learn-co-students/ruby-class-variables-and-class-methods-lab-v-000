require "pry"

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #each time a new instance of the Song class is created, the counter will increase by 1.
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    #returns array of all genres of existing songs; no duplicates
    @@genres.uniq
  end
  #  genres = ["hip hop", "jazz", "classical", "pop", "jazz", "pop"]

  def self.artists
    @@artists.uniq
  end

  def self.genre_count  #This type of hash is called a histogram.
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
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

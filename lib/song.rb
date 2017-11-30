require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << genre
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
    x = Hash.new
    self.genres.each do |genre|
      x[genre] = @@genres.count(genre)
    end
    x
  end

  def self.artist_count
    x = Hash.new
    self.artists.each do |artist| #calls the class method artists, which returns an array of unique artists (from the class variable @@artists) and loops through each one of the unique artists
      x[artist] = @@artists.count(artist) #sets the key in the hash to the unique artist.  Then assigns the total count of the artist in the @@artist array.  Since the artist is added to this class variable each time a song is instantiated, the total count of the artist in this variable represents the number of their songs.
    end
    x
  end


end
# binding.pry

class Song

  attr_accessor :name, :artist, :genre

  #class variables
  @@count = 0
  @@genres = []
  @@artists =[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << @artist
    @@genres << @genre
  end

  #returns the total number of songs
  def self.count
    @@count
  end

  #return an array of all genres with no duplicates
  def self.genres
    @@genres.uniq  #returns an array of all the artists of existing genres
  end

  def self.artists
    @@artists.uniq #returns an array of all the artists of existing songs
  end
  #class methods


end

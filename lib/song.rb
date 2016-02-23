class Song

  attr_accessor :name, :artist, :genre

  @@count = 0 
  @@artists = []
  @@genres = []
 
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
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
    #make a histogram
    #iterate over the @@genres array and populate a hash the key/value pairs. 
    #check to see if the hash already contains a key of a particular genre. 
    #If so, increment the value of that key by one, 
    #otherwise, create a new key/value pair.
  end

  def self.artist_count
    #same as above histogram but for artists
  end

end
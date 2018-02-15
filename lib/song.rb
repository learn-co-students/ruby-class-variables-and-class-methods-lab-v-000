class Song 
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end  
end  
#You will need to check to see if the hash already contains a key of a particular genre.
#If so, increment the value of that key by one, otherwise, create a new key/value pair.

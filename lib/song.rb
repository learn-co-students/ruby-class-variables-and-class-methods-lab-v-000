class Song
@@count = 0
@@artists = []
@@genres = []

 

def initialize(name,artist,genre)
@name = name  
@artist = artist
@genre = genre 


@@count += 1
@@genres << genre #adding to the arrray
@@artists << artist

end
attr_accessor :name, :artist, :genre



  
  def self.count
    @@count
  end
  # ARTIST 
  def self.artists
    arist_list = @@artists 
    arist_list.uniq
  end
  def self.artist_count #returns the  artist and number of songs they each have stored
    artist_count = {}
    @@artists.each {|artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end 
  # GENRES
  def self.genres
    genre_list = @@genres 
    genre_list.uniq
  end
  def self.genre_count # populate a hash with genre as the key and the genre count as the value
    genre_count = {}
    @@genres.each {|genre|genre_count[genre] = @@genres.count(genre)}
    genre_count 
  end
  
end
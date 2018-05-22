class Song 
  attr_accessor :name, :artist, :genre
 
 @@count = 0 
 @@genres = [] 
 @@artists = []
 
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@artists << artist
    @@genres << genre  
    @@count += 1 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq!  
  end 
  
  def self.artists
    @@artists.uniq!
  end 
	  
  def self.genre_count
     @@genres.inject(Hash.new(0)) {|genre, songs| genre[songs] += 1; genre}
  end 
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) {|artist, song| artist[song] += 1; artist}
  end 
  
end

class Song 
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
   attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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
   genre_hash = Hash.new(0)
   @@genres.each {|genre| genre_hash[genre] += 1}
   genre_hash
 end
 def self.artist_count
   artists_hash = Hash.new(0)
   @@artists.each {|artist| artists_hash[artist] += 1}
   artists_hash
 end

end    
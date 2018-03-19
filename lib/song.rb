class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
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
  
  def self.genre_count
    @@genres.map do |list|
      @@genre_count[list] = @@genres.count(list)
   end
   @@genre_count
 end

  
  def self.artist_count
     @@artists.map do |list|
      @@artist_count[list] = @@artists.count(list)
   end
   @@artist_count
  end
end
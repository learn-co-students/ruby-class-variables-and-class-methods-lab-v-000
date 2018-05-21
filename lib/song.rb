class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  
  @@genres = []
  
  @@artists = [] 
  
  @@genre_count = {} 
  
  @@artists_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
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
    @@genres.each do |x| 
    @@genre_count[x] = @@genres.count(x)
    end
    @@genre_count
  end 
  
  def self.artist_count
    @@artists.each do |x|
    @@artists_count[x] = @@artists.count(x)
    end 
  @@artists_count 
  end 
  
end 
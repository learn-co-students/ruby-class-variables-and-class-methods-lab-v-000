class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    h = Hash.new(0)
    @@genres.each { |g| h[g] +=1 }
    h
  end
  
  def self.artist_count
    h = Hash.new(0)
    @@artists.each { |a| h[a] +=1 }
    h
  end
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
end
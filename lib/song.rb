# create the Song class 
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
    h = {}
    @@genres.each do |genre| 
      h[genre] ||= 0 
      h[genre] += 1
    end
    return h
  end 
  
  def self.artist_count
    h = {}
    @@artists.each do |artist| 
      h[artist] ||= 0 
      h[artist] += 1
    end
    return h
  end
end      
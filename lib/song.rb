class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name 
    @artist = artist 
    @genre = genre
  end
  
  def self.count 
    @@count 
  end
  
  def self.artists 
    unique_artists = @@artists.uniq
    unique_artists
  end 
  
  def self.genres
    unique = @@genres.uniq 
    unique
  end 
  
  def self.genre_count 
    ret = {}
    @@genres.each do |genre|
      if ret.key? genre
        ret[genre] += 1 
      else 
        ret[genre] = 1
      end
    end
    ret
  end
  
  def self.artist_count 
    ret = {}
    @@artists.each do |genre|
      if ret.key? genre
        ret[genre] += 1 
      else 
        ret[genre] = 1
      end
    end
    ret
  end 
  
end 
class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
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
    
    @@genres.each do |genres|
    if h.has_key?(genres) 
      h[genres] += 1
    else
      h[genres] = 1
    end
  end
  return h
  end
    
  def self.artist_count
    h = {}
    
    @@artists.each do |artist|
      if h.has_key?(artist)
        h[artist] += 1 
      else
        h[artist] = 1 
      end
    end
      return h
  end
end
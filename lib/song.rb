class Song
  @@count = 0 
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre) 
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres.push(genre)
    @@artists.push(artist)
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
    g_count = {}
    @@genres.each do |genre|
      if g_count.has_key?(genre)
        g_count[genre] += 1 
      else
        g_count[genre] = 1 
      end
    end
    g_count
  end
  
  def self.artist_count
    a_count = {}
    @@artists.each do |artist|
      if a_count.has_key?(artist)
        a_count[artist] += 1 
      else
        a_count[artist] = 1 
      end
    end
    a_count
  end
  
end
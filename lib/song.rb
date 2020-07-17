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
    genre_hist = {}
    @@genres.each do |genre|
      if genre_hist[genre]
        genre_hist[genre] += 1 
      else
        genre_hist[genre] = 1 
      end 
    end
    genre_hist
  end
  
  def self.artist_count
    artist_hist = {}
    @@artists.each do |artist|
      if artist_hist[artist]
        artist_hist[artist] += 1 
      else
        artist_hist[artist] = 1 
      end
    end
    artist_hist
  end
  
end
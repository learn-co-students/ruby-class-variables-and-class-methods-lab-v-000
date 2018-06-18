class Song
  
   def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  
  @@count = 0
  
  @@genres = []
  
  def self.count
    @@count.uniq
  end
  
  def self.genres
    @@genres.uniq{|x| x.genre}
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do | genre |
      if genre_count[genre]
        genre_count += 1
      else
        genre_count[genre] = 1
      end
    end
  end
  
  @@artists = []
  
  def self.artist_count
    @@artists.each do | artist |
      if artist_count[artist]
        artist_count += 1
      else
        artist_count = 1
      end
    end
    
  def self.artists
    @@artists.uniq
  end
  
 
 
end
  
  attr_accessor :name, :artist, :genre
end
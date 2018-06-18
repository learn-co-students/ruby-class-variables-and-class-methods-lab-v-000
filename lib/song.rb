class Song

  attr_accessor :name, :artist, :genre

  
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
  
  @@artists = []
  
  def self.count
    @@count
  end
  
  def self.genres
    #@@genres = []
    #self.genres.each do | genre |
    #  @@genres.push(genre) unless @@genres.last == genre
    #end
    #@@genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
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
  
  def self.artist_count
    artist_count = {}
    @@artists.each do | artist |
      if artist_count[artist]
        artist_count += 1
      else
        artist_count = 1
      end
    end
    

  
 
 
end
  
end
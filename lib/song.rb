class Song 
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
 

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist 
    @genre = genre 
    @@genres << @genre
    @@artists << @artist
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
     genre_counts = {}
      @@genres.each do |genre|
      if genre_counts[genre] 
        genre_counts[genre] += 1 
      else
        genre_counts[genre] = 1
      end
  end
end
end

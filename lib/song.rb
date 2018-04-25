class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
 
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    if @@artist_count[artist] == nil 
      @@artist_count[artist] = 1 
    else
      @@artist_count[artist] += 1 
    end
    @@genres << genre 
    if @@genre_count[genre] == nil 
      @@genre_count[genre] = 1 
    else
      @@genre_count[genre] += 1 
    end 
  end

   def self.count
    @@count
  end
  
  # genre array must only contain unique genres
  def self.genres
    @@genres.uniq!
  end
  
  #artists array must only contain unique artists
  def self.artists
    @@artists.uniq!
  end
  
  #genre_count returns hash of genres with number of songs in each genre
  def self.genre_count
    @@genre_count
  end

  #artist_count returns hash of artists and their songs
  def self.artist_count
    @@artist_count
  end
end
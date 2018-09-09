class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  # @@genre_count = Hash.new
  # @@artist_count = Hash.new
  
  def initialize (name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    # @@genres_count
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
  
  def self.genres
    @@genres
  end
  
end
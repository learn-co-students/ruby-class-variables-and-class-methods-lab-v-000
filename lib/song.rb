class Song
  attr_accessor :name, :artists, :genre
  attr_reader :artist
  
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@count = 0
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @genre = genre
    @@genres << genre
    @artist = artist
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
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end
   
   def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
end
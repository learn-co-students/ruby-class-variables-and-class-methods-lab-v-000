class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  @@count = 0
  @@genres = []
  @@artists = []
  
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
    @@genres.reduce(Hash.new(0)) {|genre, count| genre[count] += 1; genre}
  end
    
  def self.artist_count
    @@artists.reduce(Hash.new(0)) {|artist, count| artist[count] += 1; artist}
  end
end
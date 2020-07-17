class Song

  attr_accessor :name, :artist, :genre 

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count +=1
    @@artists<<artist 
    @@genres<<genre 
  end 

  def self.count
    return @@count
  end 
    
  def self.artists
    return @@artists.uniq 
  end 

  def self.genres
    return @@genres.uniq 
  end

  def self.genre_count
    genre_c = Hash.new(0)
    @@genres.each { | g | genre_c.store(g, genre_c[g]+1) }
    return genre_c
  end

  def self.artist_count
    artist_c = Hash.new(0)
    @@artists.each { | g | artist_c.store(g, artist_c[g]+1) }
    return artist_c
  end 

end 
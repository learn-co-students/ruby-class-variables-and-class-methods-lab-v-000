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
    @@artists << artist
    @@genres << genre
  end 

  def self.count 
    @@count 
  end 

  def self.artists 
    @@artists.uniq!
  end 

  def self.genres 
    @@genres.uniq!
  end 

  def self.genre_count
    genre_count = {}
    @@genres.uniq.each do |genre|
      genre_count[genre] = @@genres.count do |g|
        if g == genre
          g 
        end 
      end 
    end 
    genre_count
  end 

  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |artist|
      artist_count[artist] = @@artists.count do |a|
        if a == artist 
          a 
        end 
      end 
    end 
    artist_count
  end 

end 
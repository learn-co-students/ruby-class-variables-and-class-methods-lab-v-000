class Song 
  @@count=0
  @@artists=[]
  @@genres=[]

  attr_accessor :name, :artist,:genre

  def initialize(name, artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count+=1
  end 
  
  def self.count  
    @@count
  end

  def self.artists 
    @@artists.uniq #Returns a new array by removing duplicate values in self. If a block is given, it will use the return value of the block for comparison.
  end

  def self.artist_count
    artist_count={}
    @@artists.each do |artist|
      artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count={}
    @@genres.each do |genre|
      genre_count[genre] ? genre_count[genre] += 1 : genre_count[genre] = 1
  end
    genre_count
  end
  
end #song

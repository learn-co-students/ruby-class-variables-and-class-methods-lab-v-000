class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  def initialize(name, artist, genre)
      @@count+=1
      @@genres<<genre
      @@artists<<artist
      @name=name
      @artist=artist
      @genre=genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genre_hash={}
    @@genres.each do |x|
      num=@@genres.count(x)
      genre_hash[x]=num
    end
    genre_hash
  end
  def self.artist_count
    artist_hash={}
    @@artists.each do |x|
      num=@@artists.count(x)
      artist_hash[x]=num
    end
    artist_hash
  end
end #Song

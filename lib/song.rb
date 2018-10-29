class Song
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
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
    @@genre_count = {}
    genre_count=[]
    array=self.genres
    array.each do |element|
      genre_count = @@genres.select{|genre| genre==element}
       @@genre_count[element]=genre_count.size
    end
    return @@genre_count
  end
 
  def self.artist_count 
    @@artist_count = {}
    artist_count=[]
    array=self.artists
    array.each do |element|
      artist_count = @@artists.select{|artist| artist==element}
       @@artist_count[element]=artist_count.size
    end
    return @@artist_count
  end
  
attr_accessor :name, :artist, :genre  
  
def initialize (name, artist, genre)
  @name=name
  @artist=artist
  @genre=genre
  @@count += 1 
  @@genres << @genre
  @@artists << @artist
end
end
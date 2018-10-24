class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  
  def initialize(name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist
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
    @@genres each do |value|
      genre_count_hash[value] ||= value
      genre_count_hash[value] += 1
    end
  end
  
  def artist_count
    
  end
  
  def name
    @name
  end
  
  
  
  
end

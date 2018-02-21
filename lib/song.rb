class Song
  attr_reader :name, :artist, :genre
  
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
  @@artists =[]
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists
    @@artiss = @@artists.uniq
  end
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      if @@genres.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count    
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      if @@artists.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

    
end
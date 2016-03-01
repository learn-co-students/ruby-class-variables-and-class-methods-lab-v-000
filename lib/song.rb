class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@artists_unique = []
  @@artists_count = {}
  @@genres = []
  @@genres_unique = []
  @@genres_count = {}

  def initialize(name,artist,genre)
    @@count = @@count + 1
    @name = name
    @artist = artist 
    @genre = genre
    
    @@artists << artist
    if !@@artists_unique.include?(artist)
      @@artists_unique << artist
      @@artists_count[artist]=1
    else
      @@artists_count[artist] += 1
    end
 
    @@genres << genre
    if !@@genres_unique.include?(genre)
      @@genres_unique << genre
      @@genres_count[genre]=1
    else
      @@genres_count[genre] += 1
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists_unique
  end

  def self.genres
    @@genres_unique
  end

  def self.genre_count
    @@genres_count
  end

  def self.artist_count

  end


end

class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
 

  def initialize(name,artist,genre)
    @@count = @@count + 1
    @name = name
    @artist = artist 
    @genre = genre
    
    @@count +=1
    @@genres << genre
    @@artists << artist
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
    genre_count = {}
    @@genres.do each |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre]=1
      end
    end
  end

  def self.artist_count
    artist_count = {}
    @@artists.do each |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist]=1
      end
    end
  end


end

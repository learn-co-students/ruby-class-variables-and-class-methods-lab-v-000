class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.key?(genre)
        genre_hash[genre] += 1
      else 
        genre_hash[genre] = []
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.key?(artist)
        artist_hash[artist] += 1
      else 
        artist_hash[artist] = []
        artist_hash[artist] = 1
      end
    end
    artist_hash    
  end

end
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genres_hash = {}
    count = 0
    @@genres.each do |genre_name|
      if genres_hash.has_key?(genre_name)
        count +=1
        genres_hash.store(genre_name, count)
      else
        count = 1
        genres_hash.store(genre_name, count)
      end
    end
      return genres_hash   
  end
  
  def self.artist_count
     artists_hash = {}
      count = 0
    @@artists.each do |artist_name|
      if artists_hash.has_key?(artist_name)
        count +=1
        artists_hash.store(artist_name, count)
      else
        count = 1
        artists_hash.store(artist_name, count)
      end
    end
      return artists_hash 
    
  end
end
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    
    @artist = artist
    @@artists << artist
    
    @genre = genre
    @@genres << genre
    
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genres_counted = {}
    @@genres.each do |genre|
      if genres_counted.has_key?(genre)
        genres_counted[genre] += 1
      else
        genres_counted[genre] = 1
      end
    end
    genres_counted
  end
  
  def self.artist_count
    artists_counted = {}
    @@artists.each do |artist|
      if artists_counted.has_key?(artist)
        artists_counted[artist] += 1
      else
        artists_counted[artist] = 1
      end
    end
    artists_counted
  end
  
end
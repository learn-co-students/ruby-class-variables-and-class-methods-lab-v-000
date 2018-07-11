class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  # return count of songs
  def self.count 
    @@count 
  end 
  
  # return array of unique genres
  def self.genres 
    @@genres.uniq
  end 
  
  #return array of unique artists  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else 
        genre_hash[genre] = 1
      end
    end
    # return genre_hash
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.has_key?(artist)
        artist_hash[artist] += 1
      else 
        artist_hash[artist] = 1
      end
    end
    # return artist_hash
    artist_hash
  end
end
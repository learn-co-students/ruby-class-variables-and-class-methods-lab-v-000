class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
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
  
  def self.genres
    genre_list = []
    @@genres.each do |g|
      if genre_list == nil
        genre_list << g 
      elsif !genre_list.include?(g)
        genre_list << g
      end
    end
      genre_list
  end
    
  def self.artists
    unique_artists = []
    @@artists.each do |a|
      if unique_artists == nil 
        unique_artists << a
      elsif !unique_artists.include?(a)
        unique_artists << a
      end
    end
      unique_artists
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |g|
      count = 1
      if genre_hash[g] == nil
        genre_hash[g] = count
      else 
        genre_hash[g]= count +=1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |a|
      count = 1 
      if artist_hash[a] == nil
        artist_hash[a] = count
      else
        artist_hash[a] = count += 1 
      end
    end
    artist_hash
  end
end
  
  
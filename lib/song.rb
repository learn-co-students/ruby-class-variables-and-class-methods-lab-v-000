class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def self.count
    @@count
  end
  
  def self.genres
    genre_list = [ ]
    @@genres.each do |genre|
      if genre_list.include?(genre) == false
        genre_list << genre
      end
    end
    genre_list
  end
  
  def self.artists
    artist_list = [ ]
    @@artists.each do |artist|
      if artist_list.include?(artist) == false
        artist_list << artist
      end
    end
    artist_list
  end
  
  def self.genre_count
    genre_count = { } 
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = { }
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1 
    end
    artist_count
  end
    
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end







end
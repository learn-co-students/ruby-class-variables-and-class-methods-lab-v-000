class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  
  GENRES = []
  ARTISTS = []
  MASTER_GENRES = []
  MASTER_ARTISTS = []
  GENRE_COUNT = {}
  ARTIST_COUNT = {}

  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    if !ARTISTS.include?(@artist)
      ARTISTS << @artist
    end
    if !GENRES.include?(@genre)
      GENRES << @genre
    end
    
    
  end
  
  def self.count
    @@count
  end 
  
  
  def self.genres
    GENRES
  end 
  
  def self.artists
    ARTISTS
  end
  
   
  def self.genre_count
    @@genres.each do |variable|
      genre_count_int = @@genres.count(variable)
      puts "!!!****@@GENRES ARRAY: #{@@genres}"
      GENRE_COUNT.store(variable, genre_count_int)
    end
    GENRE_COUNT
  end 
  
  def self.artist_count
     @@artists.each do |variable|
      key_string = @@artists.count(variable)
      ARTIST_COUNT.store(variable, key_string)
    end
    ARTIST_COUNT
  end 
  
  
  
  
end 
class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  attr_reader :name, :artist, :genre
  
  def self.count 
    @@count
  end
  
  def self.genres
    genre_list = []
    @@genres.each{|genre| genre_list << genre unless genre_list.include?(genre)}
    genre_list
  end
  
  def self.artists
    artists_list = []
    @@artists.each{|artist| artists_list << artist unless artists_list.include?(artist)}
    artists_list
  end
  
  def self.genre_count
    genres_count = {}
    @@genres.each do |genre|
      if genres_count[genre]
        genres_count[genre] += 1
      else 
        genres_count[genre] = 1
      end
    end
    genres_count
  end
  
  def self.artist_count
    artists_count = {}
    @@artists.each do |artist|
      if artists_count[artist]
        artists_count[artist] += 1
      else 
        artists_count[artist] = 1
      end
    end
    artists_count
  end
  
  
  
  
  
end
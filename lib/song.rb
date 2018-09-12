class Song
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
  @@count += 1
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre
  end
  
  def self.genres
    genres = []
    @@genres.collect do |genre|
    if genres.include?(genre)
    else
        genres << genre
    end
    end
    genres
  end
  
  def self.artists
    artists = []
    @@artists.collect do |artist|
    if artists.include?(artist)
    else
        artists << artist
    end
    end
    artists
  end
  
  def self.count
    @@count
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] == nil
      genre_count[genre] = 1
      else
      genre_count[genre] += 1
    end
  end
  genre_count
  end

  def self.artist_count
        artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] == nil
      artist_count[artist] = 1
      else
      artist_count[artist] += 1
    end
  end
  artist_count
  end
  
end
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre 
    @@artists << artist 
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist) == true
    end

    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre) == true
    end

    unique_genres
  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |genre|
      if genre_count[genre] == nil
        genre_count[genre]= 1 
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
        artist_count[artist]= 1 
      else
        artist_count[artist] += 1
      end
    end

    artist_count
  end

end
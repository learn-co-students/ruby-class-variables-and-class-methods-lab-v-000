class Song

  attr_accessor :name, :artist, :genre

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

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each {|genre| unique_genres << genre unless unique_genres.include?(genre)}
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each {|artist| unique_artists << artist unless unique_artists.include?(artist)}
    unique_artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ? genre_count[genre] += 1 : genre_count[genre] = 1
    end 
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end

end
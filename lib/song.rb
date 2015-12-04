class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !(unique_artists.include?(artist))
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if !(unique_genres.include?(genre))
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
    end
    artist_count
  end
end
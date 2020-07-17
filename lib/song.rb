# Song class
class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist #unless @@artists.include?(artist)
    @genre = genre
    @@genres << genre # unless @@genres.include?(genre)
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []

    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end

    unique_artists
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end

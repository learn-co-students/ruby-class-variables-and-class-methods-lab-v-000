class Song
  @@count = 0
  @@artists = []
  @@genres = []
  ARTISTS = {}
  GENRES = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@artists.include?(artist) == false
      @@artists << artist
      ARTISTS[artist] = 1
    else
      @@artists << artist
      ARTISTS[artist] += 1
    end

    if @@genres.include?(genre) == false
      @@genres << genre
      GENRES[genre] = 1
    else
      @@genres << genre
      GENRES[genre] += 1
    end
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    GENRES
  end

  def self.artist_count
    ARTISTS
  end
end

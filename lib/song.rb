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
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each_pair do |genre, song|
      genre_count[genre] = Song
    end
    genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each_pair do |artist, song|
    artist_count[artist] = song
  end
  artist_count
  end
end

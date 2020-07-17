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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each {|i|
      genre_count.include?(i) ? genre_count[i] += 1 : genre_count[i] = 1
    }
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|i|
      artist_count.include?(i) ? artist_count[i] += 1 : artist_count[i] = 1
    }
    artist_count
  end

end

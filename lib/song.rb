class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name,artist,genre)
    @@count +=1
    @name = name
    @artist = artist
      @@artists << self.artist
    @genre = genre
      @@genres << self.genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each {|genre|
      genre_count[genre]||= genre_count[genre] =0
      genre_count[genre] += 1
    }
  genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist|
      artist_count[artist]||= artist_count[artist] = 0
      artist_count[artist] += 1
    }
  artist_count
  end
end

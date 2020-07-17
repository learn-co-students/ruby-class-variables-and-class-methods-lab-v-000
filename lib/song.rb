class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists.push(artist)

    @genre = genre
    @@genres.push(genre)
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
    genres_counted = {}
    @@genres.each{|genre|
      genres_counted.include?(genre) ? (genres_counted[genre] += 1) : (genres_counted[genre] = 1)
    }
    genres_counted
  end

  def self.artist_count
    artists_counted = {}
    @@artists.each{|artist|
      artists_counted.include?(artist) ? (artists_counted[artist] += 1) : (artists_counted[artist] = 1)
    }
    artists_counted
  end
end
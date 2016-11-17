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
    genres_histogram = {}
    @@genres.each do |genre|
      if genres_histogram[genre] == nil
        genres_histogram[genre] = 1
      else
        genres_histogram[genre] += 1
      end
    end
    genres_histogram
  end

  def self.artist_count
    artists_histogram = {}
    @@artists.each do |artist|
      if artists_histogram[artist] == nil
        artists_histogram[artist] = 1
      else
        artists_histogram[artist] += 1
      end
    end
    artists_histogram
  end
end

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

  def Song.genre_count
    genres_count = {}
    @@genres.each do |genre|
      if genres_count.has_key?(genre)
        genres_count[genre] += 1
      else
        genres_count[genre] = 1
      end
    end
    genres_count
  end

  def Song.artist_count
    artists_count = {}
    @@artists.each do |artist|
      if artists_count.has_key?(artist)
        artists_count[artist] += 1
      else
        artists_count[artist] = 1
      end
    end
    artists_count
  end
end

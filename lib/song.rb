class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genres
    @@genres = @@genres.uniq
    @@genres
  end

  def self.genre_count
    genres_count = {}
    value = 1
    @@genres.collect do |genre|
      if !(genres_count.include?(genre))
        genres_count[genre] = value
      else genres_count[genre] += 1
      end
    end
    genres_count
  end

def self.artist_count
  artists_count = {}
  value = 1
  @@artists.collect do |artist|
    if !(artists_count.include?(artist))
      artists_count[artist] = value
    else artists_count[artist] += 1
    end
  end
  artists_count
end
end

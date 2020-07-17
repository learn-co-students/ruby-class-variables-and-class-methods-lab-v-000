class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@artist_count = {}
  @@genre_count = 0
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << artist
    @@genres << genre

    if !@@artist_count.keys.include?(artist)
       @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end

    if !@@genre_count.keys.include?(genre)
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end

  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_count.keys
  end

  def self.genres
    @@genre_count.keys
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

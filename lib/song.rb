class Song
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

    if @@genre_count.has_key? genre
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end

    if @@artist_count.has_key? artist
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] = 1
    end
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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end

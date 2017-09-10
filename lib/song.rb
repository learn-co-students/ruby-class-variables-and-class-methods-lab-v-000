class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  @@count = 0

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@artists << artist
    @@genres << genre

    unless @@genre_count.has_key?(genre)
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end

    unless @@artist_count.has_key?(artist)
      @@artist_countt[artist] = 1
    else
      @@artist_countt[artist] += 1
    end

  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

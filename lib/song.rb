class Song
  attr_accessor :name, :artist, :genre
  attr_reader :genre_count, :artist_count

  @@song = []
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
  @@genres.each do |genre|
    @@genre_count.has_key?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
  end
  @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count.has_key?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    end
    @@artist_count
  end

end

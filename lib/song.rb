class Song

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists.push(artist)
    @@genres.push(genre)

    @@count += 1
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
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    return genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
    end
    return artist_count
  end

  attr_accessor :name, :artist, :genre
end

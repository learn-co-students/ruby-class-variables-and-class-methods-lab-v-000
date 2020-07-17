class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    genres.each do |genre|
      count = 0
      @@genres.each { |g| count += 1 if g == genre }
      genre_count[genre] = count
    end
    genre_count
  end

  def self.artist_count
    artist_songs = {}
    artists.each do |artist|
      count = 0
      @@artists.each { |a| count +=1 if a == artist }
      artist_songs[artist] = count
    end
    artist_songs
  end
end

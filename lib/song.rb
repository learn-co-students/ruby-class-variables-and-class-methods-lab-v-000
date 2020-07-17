class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

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
    genre_artists = Hash.new(0)
    @@genres.each do |genre|
      genre_artists[genre] += 1
    end
    genre_artists
  end

  def self.artist_count
    n_of_songs_per_artists = Hash.new(0)
    @@artists.each do |artist|
      n_of_songs_per_artists[artist] += 1
    end
    n_of_songs_per_artists
  end
end

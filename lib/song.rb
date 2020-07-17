class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.genres
    one_time_genres = []
    @@genres.each do |genre|
    one_time_genres.include?(genre) ? nil : one_time_genres << genre
    end
    one_time_genres.compact
  end

  def self.artists
    one_time_artist = []
    @@artists.each do |artist|
      one_time_artist.include?(artist) ? nil : one_time_artist << artist
    end
    one_time_artist.compact
  end

  def self.genre_count
    genre_with_amount = {}
    @@genres.each do |genre|
      genre_with_amount[genre] = @@genres.count(genre)
    end
    genre_with_amount
  end

  def self.artist_count
    artist_with_amount = {}
    @@artists.each do |artist|
      artist_with_amount[artist] = @@artists.count(artist)
    end
    artist_with_amount
  end
end
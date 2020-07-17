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
    genre_counter = {}
    @@genres.each_with_index do |genre, index|
      unless genre_counter.key?(genre)
        total_songs = @@genres.count(genre)
        genre_counter[genre] = total_songs
      end
    end
    genre_counter
  end

  def self.artist_count
    artist_counter = {}
    @@artists.each_with_index do |artist, index|
      unless artist_counter.key?(artist)
        total_songs = @@artists.count(artist)
        artist_counter[artist] = total_songs
      end
    end
    artist_counter
  end
end

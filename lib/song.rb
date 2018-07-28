class Song
  attr_accessor :name, :artist, :genre

  #@@count will hold the number of songs created
  @@count = 0

  #@@genres will hold the unique genres of all created songs
  @@genres = []

  #@@artists is an array of unique artists for all created songs
  @@artists = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre

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
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] ||= 0
      genre_hash[genre] += 1
    end

    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] ||= 0
      artist_hash[artist] += 1
    end

    artist_hash
  end

end

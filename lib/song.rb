class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    genre_hash = Hash.new(0)

    @@genres.each do |gen|
      genre_hash[gen] += 1
    end
    genre_hash
  end
  def self.artist_count
    genre_hash = Hash.new(0)
    @@artists.each do |art|
      genre_hash[art] += 1
    end
    genre_hash
  end
end
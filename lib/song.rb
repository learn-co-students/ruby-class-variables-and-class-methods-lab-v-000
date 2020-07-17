class Song
  attr_accessor :name, :artist, :genre
  attr_reader :name
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_list = self.genres
      genre_list.each {|genre| genre_hash[genre] = @@genres.count(genre) }
    genre_hash
  end

  def self.artist_count
    artists_hash = {}
    artist_list = self.artists
    artist_list.each {|artist| artists_hash[artist] = @@artists.count(artist) }
    artists_hash
  end

end

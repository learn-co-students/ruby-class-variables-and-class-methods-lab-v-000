class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |hash, genre| hash[genre] += 1; hash }
    #genre_hash = Hash.new(0)
    #@@genres.collect { |genre| genre_hash[genre] += 1 }
    #genre_hash
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |hash, artist| hash[artist] += 1; hash }
  end

end

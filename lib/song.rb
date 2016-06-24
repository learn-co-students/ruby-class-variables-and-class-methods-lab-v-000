class Song
  
  attr_accessor :song, :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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

  def self.artist_count
    artist_count_hash = Hash.new(0)
    @@artists.each {|artist| artist_count_hash[artist] += 1}
    artist_count_hash
  end

  def self.genre_count
    genre_count_hash = Hash.new(0)
    @@genres.each {|genre| genre_count_hash[genre] += 1}
    genre_count_hash
  end

end

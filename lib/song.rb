class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_no_rep = []
  @@artists_no_rep = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @@artists_no_rep << artist if @@artists_no_rep.none?{|i| i == artist}
    @genre = genre
    @@genres << genre
    @@genres_no_rep << genre if @@genres_no_rep.none?{|i| i == genre}
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists_no_rep
  end

  def self.genres
    @@genres_no_rep
  end

  def self.genre_count
    genre_count = {}
    @@genres_no_rep.each do |genre|
      inst = @@genres.select{|j| genre == j}
      genre_count[genre] = inst.size
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists_no_rep.each do |artist|
      inst = @@artists.select{|j| artist == j}
      artist_count[artist] = inst.size
    end
    return artist_count
  end
end

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
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    Hash[*@@genres.group_by{ |genre| genre }.flat_map{ |value, genre| [value, genre.size] }]
  end

  def self.artist_count
    Hash[*@@artists.group_by{ |artist| artist }.flat_map{ |value, artist| [value, artist.size] }]
  end

end

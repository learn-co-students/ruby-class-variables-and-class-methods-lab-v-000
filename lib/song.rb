
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hash_genres = {}

    @@genres.each {|genre_name| hash_genres[genre_name] = @@genres.count(genre_name)}
    hash_genres
  end

  def self.artist_count
    hash_artists = {}

    @@artists.each {|artist_name| hash_artists[artist_name] = @@artists.count(artist_name)}
    hash_artists
  end

end

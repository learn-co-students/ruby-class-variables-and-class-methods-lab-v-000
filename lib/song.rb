class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = {}
  @@genres = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists[artist] += 1
    @@genres[genre] += 1
  end

  def count
    @@count
  end

  def artists
    @@artists.keys
  end

  def genres
    @@genres.keys
  end

  def genre_count
    @@genres
  end

  def artist_count
    @@artists
  end

end

new_song = Song.new("a","b","c")
puts Song.artists
puts Song.artists_count

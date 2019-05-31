
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    @@count
  end

  def self.genre_count
    counter = 0
    genre_count = {}
    while counter < @@count
      if genre_count.has_key?(@@genres[counter])
        genre_count[@@genres[counter]] += 1
      else
        genre_count[@@genres[counter]] = 1
      end
      counter += 1
    end
    genre_count
  end

  def self.artist_count
    counter = 0
    artist_count = {}
    while counter < @@count
      if artist_count.has_key?(@@artists[counter])
        artist_count[@@artists[counter]] += 1
      else
        artist_count[@@artists[counter]] = 1
      end
      counter += 1
    end
    artist_count
  end

  def self.genres
    unique_genres = genre_count.keys
  end

  def self.artists
    unique_artists = artist_count.keys
  end

end

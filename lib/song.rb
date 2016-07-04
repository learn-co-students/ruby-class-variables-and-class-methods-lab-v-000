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
    @@artists << artist
    @@genres << genre
  end

  #.count returns the number of songs created
  def self.count
    @@count
  end

  #.artists returns a unique array of artists of existing songs
  def self.artists
    @@artists.uniq
  end

  #.genres returns a unique array of genres of existing songs
  def self.genres
    @@genres.uniq
  end

  #.genre_count returns a hash of genres and the number of songs that have those genre
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end

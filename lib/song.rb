class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@count += 1
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq #uniq Ruby method
  end

  def self.genres
    @@genres.uniq #simple uniq Ruby method
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      unless artist_count[artist]
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      unless genre_count[genre]
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
    end
    genre_count
  end
end

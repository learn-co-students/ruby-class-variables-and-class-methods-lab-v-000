class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    genre_counts = {}
    @@genres.each do |genre|
      if genre_counts[genre]
        genre_counts[genre] += 1
      else
        genre_counts[genre] = 1
      end
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist|
      if artist_counts[artist]
        artist_counts[artist] += 1
      else
        artist_counts[artist] = 1
      end
    end
    artist_counts
  end

end

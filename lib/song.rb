class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor(:name, :artist, :genre)

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
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

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |g|
      genre_count[g] += 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |a|
      artist_count[a] += 1
    end
    artist_count
  end
end

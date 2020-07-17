class Song

  @@count = 0
  @@genre_count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genres
    @@genres = @@genres.uniq
    @@genres
  end

  def self.genre_count
    @@genre_count = {}
    @@genres.each do |g|
      @@genre_count[g] = @@genres.count(g)
    end
    @@genre_count
  end

  def self.artist_count
    @@artist_count = {}
    @@artists.each do |a|
      @@artist_count[a] = @@artists.count(a)
    end
    @@artist_count
  end

end

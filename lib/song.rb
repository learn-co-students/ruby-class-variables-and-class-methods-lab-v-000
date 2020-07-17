class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

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
    @@genres.uniq.each do |name|
      @@genre_count[name] = @@genres.count(name)
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.uniq.each do |name|
      @@artist_count[name] = @@artists.count(name)
    end
    @@artist_count
  end

end

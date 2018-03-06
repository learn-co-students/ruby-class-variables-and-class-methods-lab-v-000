class Song
 attr_reader :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []
 @@artist_count = {}
 @@genre_count = {}

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

    @@genre_count[@genre] ?@@genre_count[@genre] += 1 : @@genre_count[@genre] = 1

    @@artist_count[@artist] ? @@artist_count[@artist] += 1 : @@artist_count[@artist] = 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end

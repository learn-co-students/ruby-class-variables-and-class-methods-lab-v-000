class Song

attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artist_count = {}
  @@artists = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << "#{genre}"
    @@artists << "#{artist}"
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each {|genre| @@genre_count[genre] ||= 0; @@genre_count[genre] += 1}
    @@genre_count
  end

  def self.artist_count
    @@artists.each {|artist| @@artist_count[artist] ||= 0; @@artist_count[artist] += 1}
    @@artist_count
  end

end
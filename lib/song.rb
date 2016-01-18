class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

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

  @@genres = []
  def self.genres
    @@genres.uniq
  end

  @@artists =[]
  def self.artists
    @@artists.uniq
  end

  @@genre_count = {}
  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end

  @@artist_count = {}
  def self.artist_count
    @@artists.each do |genre|
      @@artist_count[genre] = @@artists.count(genre)
    end
   @@artist_count
  end

end
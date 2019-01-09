class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def  initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each {|genre| genre_count[genre] += 1 if genre_count[genre] ||=0}
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist| artist_count[artist] +=1 if artist_count[artist] ||= 0}
    artist_count
  end
end

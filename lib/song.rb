class Song
attr_reader :name, :artist, :genre

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
    @@genres.uniq.collect {| el | [el, @@genres.count(el)] }.to_h
  end

  def self.artist_count
    @@artists.uniq.collect {| el | [el, @@artists.count(el)] }.to_h
  end

end

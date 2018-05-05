class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres_hash= {}
    @@genres.uniq.each do |genre_item|
      genres_hash[genre_item] = @@genres.count(genre_item)
    end
    genres_hash
  end

  def self.artist_count
    artists_hash= {}
    @@artists.uniq.each do |artist_item|
      artists_hash[artist_item] = @@artists.count(artist_item)
    end
    artists_hash
  end

end

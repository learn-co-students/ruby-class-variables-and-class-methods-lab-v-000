class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = Array.new
  @@genres = Array.new
  @@genre_count = Hash.new
  @@artist_count = Hash.new

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@genre_count[genre] = 0 unless @@genre_count.any? {|existing_genres,songs| existing_genres == @genre}
    @@genre_count[genre] += 1
    @@artist_count[artist] = 0 unless @@artist_count.any? {|existing_artists,songs| existing_artists == @artist}
    @@artist_count[artist] += 1
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
    @@artists
  end

  def self.genres
    @@genres.uniq!
    @@genres
  end
end

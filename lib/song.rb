class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    song_genres = {}
    self.genres.each do |genre|
      song_genres[genre] = @@genres.count{|g| g == genre}
    end
    song_genres
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    song_artists = {}
    self.artists.each do |artist|
      song_artists[artist] = @@artists.count{|a| a == artist}
    end
    song_artists
  end
end

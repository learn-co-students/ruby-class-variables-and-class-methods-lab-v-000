class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    self.increment_song_count
    self.add_artist(artist)
    self.add_genre(genre)
  end

  def self.count
    @@count
  end

  def increment_song_count
    @@count += 1
  end

  def add_artist(artist)
    @@artists.push(artist)
  end

  def self.artists
    @@artists.uniq
  end

  def add_genre(genre)
    @@genres.push(genre)
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres_hash = {}
    self.genres.each do |genre|
      genres_hash[genre] = @@genres.count{|g| g == genre}
    end
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    self.artists.each do |artist|
      artist_hash[artist] = @@artists.count{|a| a == artist}
    end
    artist_hash
  end
end

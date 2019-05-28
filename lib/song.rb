class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    genre_song_hash = {}
    @@genres.collect do |genre|
      genre_song_hash[genre] = 0 if !genre_song_hash.include?(genre)
      genre_song_hash[genre] += 1
    end
    return genre_song_hash
  end

  def self.artist_count
    artist_song_hash = {}
    @@artists.collect do |artist|
      artist_song_hash[artist] = 0 if !artist_song_hash.include?(artist)
      artist_song_hash[artist] += 1
    end
    return artist_song_hash
  end
end

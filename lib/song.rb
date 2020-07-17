class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    genres_return = []
    @@genres.each do |genre|
      if !genres_return.include?(genre)
        genres_return << genre
      end
    end
    genres_return
  end

  def self.artists
    artists_return = []
    @@artists.each do |artist|
      if !artists_return.include?(artist)
        artists_return << artist
      end
    end
    artists_return
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.include?(genre)
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash.include?(artist)
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end

end

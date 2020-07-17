class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize (name, artist, genre)
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
    unique_artists = []
    @@artists.each do |each_artist|
      unless unique_artists.include?(each_artist)
        unique_artists << each_artist
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |each_genre|
      unless unique_genres.include?(each_genre)
        unique_genres << each_genre
      end
    end
    unique_genres
  end

  def self.genre_count
    genres_hash = {}

    @@genres.each do |genre|
      if genres_hash.key?(genre)
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = {}

    @@artists.each do |artist|
      if artists_hash.key?(artist)
        artists_hash[artist] += 1
      else
        artists_hash[artist] = 1
      end
    end
    artists_hash
  end

end

class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists()
    unique_artists = []
    @@artists.each do |a|
      if !unique_artists.include?(a)
        unique_artists << a
      end
    end
    unique_artists
  end

  def self.artist_count()
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.include?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end

  def self.genres()
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    unique_genres
  end

  def self.genre_count()
    genre_hash = {}
    @@genres.each do |g|
      if genre_hash.include?(g)
        genre_hash[g] += 1
      else
        genre_hash[g] = 1
      end
    end
    genre_hash
  end

end

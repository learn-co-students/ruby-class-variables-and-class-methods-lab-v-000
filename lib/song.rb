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
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
      genre_count_hash ={}
      g_count = 0
    @@genres.each do |genre|
      if genre_count_hash.include?(genre)
        g_count += 1
        genre_count_hash[genre] = g_count
      else
        g_count = 0
        genre_count_hash[genre] = {}
        g_count += 1
        genre_count_hash[genre] = g_count
      end
    end
    genre_count_hash
  end

  def self.artist_count
      artist_count_hash ={}
      a_count = 0
    @@artists.each do |artist|
      if artist_count_hash.include?(artist)
        a_count += 1
        artist_count_hash[artist] = a_count
      else
        a_count = 0
        artist_count_hash[artist] = {}
        a_count += 1
        artist_count_hash[artist] = a_count
      end
    end
    artist_count_hash
  end
end
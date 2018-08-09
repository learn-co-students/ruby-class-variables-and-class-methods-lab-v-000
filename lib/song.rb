class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if artist_count_hash.key?(artist) == true
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    artist_count_hash
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |artist|
      if genre_count_hash.key?(artist) == true
        genre_count_hash[artist] += 1
      else
        genre_count_hash[artist] = 1
      end
    end
    genre_count_hash
  end

end

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres  = []
  @@genre_count
  @@genre_hash = {}
  @@artists_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres  << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_hash.has_key?(genre)
        @@genre_hash[genre] += 1
      else
        @@genre_hash[genre] = 1
      end
    end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artists_hash.has_key?(artist)
        @@artists_hash[artist] += 1
      else
        @@artists_hash[artist] = 1
      end
    end
    @@artists_hash
  end
end

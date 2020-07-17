class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize( name, artist, genre)
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

  def self.artists
    @@artists.uniq
  #  @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.include?(genre)
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
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
end

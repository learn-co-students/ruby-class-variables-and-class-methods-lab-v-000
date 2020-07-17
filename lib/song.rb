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
    uniq_genres = @@genres.uniq!
  end

  def self.artists
    uniq_artists = @@artists.uniq!
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.has_key?(genre)
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash.has_key?(artist)
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    hash
  end

end

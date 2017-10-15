class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    new_array = []
    new_array = @@genres.uniq
    new_array
  end

  def self.artists
    new_array = []
    new_array = @@artists.uniq
    new_array
  end

  def self.genre_count
    new_hash = {}
    @@genres.each do |genre|
      if new_hash.key?(genre)
        new_hash[genre] += 1
      else new_hash[genre] = 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      if new_hash.key?(artist)
        new_hash[artist] += 1
      else new_hash[artist] = 1
      end
    end
    new_hash
  end

end

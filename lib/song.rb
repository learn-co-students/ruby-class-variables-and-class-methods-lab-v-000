class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist,genre)
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
    hash = {}
    @@genres.each  do |genre|
      if hash.include?(genre)
        hash[genre] += 1
      elsif hash[genre] = 1
      end
    end
    hash
  end
  def self.artist_count
    artist_hash = {}
    @@artists.each  do |genre|
      if artist_hash.include?(genre)
        artist_hash[genre] += 1
      elsif artist_hash[genre] = 1
      end
    end
    artist_hash
  end
end

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |x|
      if artist_hash[x] == false
        artist_hash[x] = 1
      else artist_hash[x] += 1
      end
    end
    artist_hash
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |x|
      genre_hash[x] += 1
    end
    genre_hash
  end
end
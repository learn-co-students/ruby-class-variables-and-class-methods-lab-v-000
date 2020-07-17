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
    list = []
    @@genres.each do |genre|
      list << genre unless list.include?(genre)
    end
    list
  end

  def self.artists
    list = []
    @@artists.each do |artist|
      list << artist unless list.include?(artist)
    end
    list
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] = 0 unless genre_hash.keys.include?(genre)
        genre_hash[genre] += 1
      end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] = 0 unless artist_hash.include?(artist)
      artist_hash[artist] += 1
    end
    artist_hash
  end

end

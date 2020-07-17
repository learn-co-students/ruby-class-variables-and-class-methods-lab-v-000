class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

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

  def self.genre_count
    @@genre_count = @@genres.inject(Hash.new(0)) {|hash, arr_element| hash[arr_element] += 1; hash}
    @@genre_count
  end

  def self.artist_count
    @@artist_count = @@artists.inject(Hash.new(0)) {|hash, arr_element| hash[arr_element] += 1; hash}
    @@artist_count
  end
end

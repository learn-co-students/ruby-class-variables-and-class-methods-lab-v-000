class Song

  @@count = 0
  @@artists = []
  @@artist_names = []
  @@genres = []
  @@genre_list = []
  @@genre_hash = Hash.new(0)
  @@artist_hash = Hash.new(0)

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@artist_names << @artist if !@@artist_names.include?(@artist)
    @@genre_list << @genre if !@@genre_list.include?(@genre)
    @@number = 0

  end

  def self.count
    @@count
  end

  def self.artists
    @@artist_names
  end

  def self.genres
    @@genre_list
  end

  def self.genre_count
    @@genres.each { |genre| @@genre_hash[genre] += 1 }
    @@genre_hash
  end

  def self.artist_count
    @@artists.each { |artist| @@artist_hash[artist] += 1 }
    @@artist_hash
  end

end

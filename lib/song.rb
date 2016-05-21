
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
    @@count
  end

  def self.genres
    @genre_array = []
    @@genres.each do |genre|
      @genre_array << genre unless @genre_array.include?(genre)
    end
    @genre_array
  end

  def self.artists
    @artist_array = []
    @@artists.each do |artist|
      @artist_array << artist unless @artist_array.include?(artist)
    end
    @artist_array
  end

  def self.genre_count
    @genre_hash = {}
    @genre_array.each {|genre| @genre_hash[genre] = 0}
    @@genres.each {|genre| @genre_hash[genre] += 1}
    @genre_hash
  end

  def self.artist_count
    @artist_hash = {}
    @artist_array.each {|artist| @artist_hash[artist] = 0}
    @@artists.each {|artist| @artist_hash[artist] += 1}
    @artist_hash
  end

end

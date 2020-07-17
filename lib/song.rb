class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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
    unique = []
    @@artists.each{|artist| unique << artist if !unique.include?(artist) }
    unique
  end

  def self.genres
    unique = []
    @@genres.each{|genre| unique << genre if !unique.include?(genre) }
    unique
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count
  end

end

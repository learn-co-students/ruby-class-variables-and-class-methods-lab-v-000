class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist # unless @@artists.include? @artist
    @@genres << @genre # unless @@genres.include? @genre
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
    songs_in_genre = Hash.new(0)
    @@genres.each do |genre|
      songs_in_genre[genre] += 1
    end
    songs_in_genre
  end

  def self.artist_count
    songs_per_artist = Hash.new(0)
    @@artists.each do |artist|
      songs_per_artist[artist] += 1
    end
    songs_per_artist
  end
end
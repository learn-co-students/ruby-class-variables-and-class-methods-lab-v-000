class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    num_genre = Hash.new(0)
    @@genres.each do |num|
      num_genre[num] += 1
    end
    num_genre.each do |genre, num|
      num_genre[genre] = num
    end
  end
  def self.artist_count
    num_artist = Hash.new(0)
    @@artists.each do |num|
      num_artist[num] += 1
    end
    num_artist.each do |artist, num|
      num_artist[artist] = num
    end
  end
end

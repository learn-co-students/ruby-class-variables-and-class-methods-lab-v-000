class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
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

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artists, counts| counts[artists] += 1 }
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genres, counts| counts[genres] += 1 }
  end
end

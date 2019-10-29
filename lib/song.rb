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
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    Hash[@@genres.group_by {|genre| genre}.map {|key, value| [key, value.count]}]
  end

  def self.artist_count
    Hash[@@artists.group_by {|artist| artist}.map {|key, value| [key, value.count]}]
  end
end

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

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
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    hash = Hash.new(0)
    hash = @@genres.group_by{ |v| v}.map{ |k,v| [k, v.size]}
    hash.to_h
  end

  def self.artist_count
    hash = Hash.new(0)
    hash = @@artists.group_by{ |v| v}.map{ |k,v| [k, v.size]}
    hash.to_h
  end
  
end

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
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end
  
  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, genre| total[genre] += 1 ;total}
  end
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, artist| total[artist] += 1;total}
  end
end

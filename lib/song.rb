class Song
  # attributes
  attr_reader :name, :artist, :genre
  
  # initialization
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  # class var/methods
  @@count = 0
  @@artists = []
  @@genres = []
  
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
    cnt = {}
    @@genres.each { |g| cnt.include?(g)? (cnt[g] += 1) : (cnt[g] = 1) }
    cnt
  end
  
  def self.artist_count
    cnt = {}
    @@artists.each { |a| cnt.include?(a)? (cnt[a] += 1) : (cnt[a] = 1) }
    cnt
  end
end
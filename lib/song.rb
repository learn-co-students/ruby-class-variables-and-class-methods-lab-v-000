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

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    g = {}
    @@genres.each do |genre|
      num = genre.keys.size
      g[genre] = num
    end
    g
  end

  def self.artist_count
  end
 
end
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
    @@artists << artist
    @@genres << genre
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
    g_count = {}
    @@genres.each do |genre|
      g_count[genre] = 0 if g_count[genre].nil?
      g_count[genre] += 1
    end
    g_count
  end
  
  def self.artist_count
    a_count = {}
    @@artists.each do |artist|
      a_count[artist] = 0 if a_count[artist].nil?
      a_count[artist] += 1
    end
    a_count
  end
end
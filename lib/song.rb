class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    h = {}
    @@genres.each do |g|
       h[g ]? h[g]+=1 : h[g]=1
    end
    h
  end

  def self.artist_count
    h = {}
    @@artists.each do |a|
      h[a] ? h[a]+=1 : h[a]=1
    end
    h
  end
end

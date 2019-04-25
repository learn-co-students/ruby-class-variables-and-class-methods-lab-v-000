class Song
attr_accessor :name, :artist, :genre, :artists
@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count +=1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    h = Hash.new(0)
    @@genres.each do |g|
      h[g] +=1
    end
    h
  end

  def self.artist_count
    h = Hash.new(0)
    @@artists.each do |a|
      h[a] +=1
    end
    h
  end

  def self.count
    @@count
  end
end

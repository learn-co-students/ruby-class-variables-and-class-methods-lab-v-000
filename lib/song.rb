class Song
  attr_accessor :name, :artist, :genre
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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
end

def self.genre_count
  genrehash = {}
  @@genres.each do |genre|
    if genrehash[genre]
      genrehash[genre] += 1
    else
      genrehash[genre] = 1
    end
  end
  genrehash
end

def self.artist_count
  artisthash = {}
  @@artists.each do |artist|
    if artisthash[artist]
      artisthash[artist] += 1
    else
      artisthash[artist] = 1
    end
  end
  artisthash
end
  #return value should be hash
end  #unique keys for genres
  #how many genres show up repeatedly

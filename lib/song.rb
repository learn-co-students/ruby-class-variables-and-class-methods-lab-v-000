class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
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
    @@genres.each do |x|
      if genrehash.include?(x)
        genrehash[x] += 1
      else
        genrehash[x] = 1
      end
    end
    genrehash
  end

  def self.artist_count
    artisthash = {}
    @@artists.each do |x|
      if artisthash.include?(x)
        artisthash[x] += 1
      else
        artisthash[x] = 1
      end
    end
    artisthash
  end
end

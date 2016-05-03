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
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres << @genre
    @@genres.uniq - [nil]
  end

  def self.artists
    @@artists << @artist
    @@artists.uniq - [nil]
  end

  def self.genre_count
    @@genres.each do |x|
      if @@genre_count.include?(x)
        @@genre_count[x] += 1
      else
        @@genre_count[x] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |x|
      if @@artist_count.include?(x)
        @@artist_count[x] += 1
      else
        @@artist_count[x] = 1
      end
    end
    @@artist_count
  end

end
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
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    counts_x = {}
    @@genres.each do |genre|
      if counts_x.include?(genre)
      counts_x[genre] += 1
    else
      counts_x[genre] = 1
      end
    end
    counts_x
  end

  def self.artist_count
    counts_y = {}
    @@artists.collect do |artist|
      if counts_y.include?(artist)
      counts_y[artist] += 1
    else
      counts_y[artist] = 1
      end
    end
counts_y
  end

end

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@songs << self
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre
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
    gens = self.genres
    rtn = {}

    gens.each do |g|
      rtn[g] = 0
      @@genres.each do |g_|
        if g == g_
          rtn[g] += 1
        end
      end
    end

    rtn
  end

  def self.artist_count
    arts = self.artists
    rtn = {}

    arts.each do |a|
      rtn[a] = 0
      @@artists.each do |a_|
        if a == a_
          rtn[a] += 1
        end
      end
    end

    rtn
  end
end

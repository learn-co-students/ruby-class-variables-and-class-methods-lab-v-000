class Song
  attr_accessor :name, :artist, :genre

  #keep track of the # of new songs
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
    @@genres << self.genre
    @@artists << self.artist

    if @@genre_count.has_key?(genre)
      tally = @@genres.count(genre)
      @@genre_count.store(genre, tally)
    else
      @@genre_count.store(genre,1)
    end

    if @@artist_count.has_key?(artist)
      tally = @@artists.count(artist)
      @@artist_count.store(artist, tally)
    else
      @@artist_count.store(artist,1)
    end

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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

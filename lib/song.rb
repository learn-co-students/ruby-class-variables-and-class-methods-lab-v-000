class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @genres = []
  @genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << self.genre
    @@artists << self.artist

    if @@genre_count.has_key?(genre)
      genre_tally = @@genres.count(genre)
      @@genre_count.store(genre, genre_tally)
    else
      @@genre_count.store(genre, 1)
  end

  def count
    @@count
  end

  def genres
  end

end

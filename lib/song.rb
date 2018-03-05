class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist

    @@genres << genre

    @@count += 1
  end

  # reads / returns name
  def name
    @name
  end

  # reads / returns artist
  def artist
    @artist
  end

  # reads / returns genre
  def genre
    @genre
  end

  # reads / returns count of songs
  def self.count
    @@count
  end

  # returns a unique array of artists
  def self.artists
    return @@artists.uniq
  end

  # returns a unique array of genres
  def self.genres
    return @@genres.uniq
  end

  # returns a hash of genres and the number of songs in that genre
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.keys.include?(genre) == false
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] += 1
      end # if-else
    end # do

    return @@genre_count
  end

  # returns a hash of artists and the number of songs by that artist
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.keys.include?(artist) == false
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] += 1
      end # if-else
    end # do

    return @@artist_count
  end

end # of class

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists =[]
  @@genres =[]

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def Song.count
    @@count
  end

  def Song.artists
    @@artists = @@artists.uniq
  end

  def Song.genres
    @@genres = @@genres.uniq
  end

  def Song.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre,genres_count|
      genre_count[genre] += 1
  end
    genre_count
  end

  def Song.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
  end

end
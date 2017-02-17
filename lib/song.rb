class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.artists
    @@artists.uniq

  end

  def Song.genre_count
    output = {}
    Song.genres.each do |genre|
      output[genre]=@@genres.count(genre)
    end
    output
  end

  def Song.artist_count
    output = {}
    Song.artists.each do |artist|
      output[artist]=@@artists.count(artist)
    end
    output
  end

end

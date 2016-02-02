class Song

  @@count = 0

  @@genres = []
  @@genre_count = 0

  @@artists = []
  @@artists_song_count = {}

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    b = Hash.new(0)
    @@artists.each do |artist|
      b[artist] +=1
    end
    b
  end
  
  def self.genre_count
  b = Hash.new(0)
    @@genres.each do |genre|
      b[genre] +=1
    end
    b
  end

  def initialize(name, artist, genre)
    @@count +=1

    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
  end

end
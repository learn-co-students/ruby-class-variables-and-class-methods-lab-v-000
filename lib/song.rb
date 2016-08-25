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
  genre_count = {}
    num = 1
    @@genres.each do |genre|
      if genre_count.include?(genre)
      genre_count[genre] = num+1
    else
      genre_count[genre] = num
    end
    end
    genre_count
  end

  def self.artist_count
  artist_count = {}
    num = 1
    @@artists.each do |artist|
      if artist_count.include?(artist)
      artist_count[artist] = num+1
    else
      artist_count[artist] = num
    end
    end
    artist_count
  end
end
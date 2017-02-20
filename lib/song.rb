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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if genres[genre] == nil
        genres[genre] = 1
      else
        genres[genre] += 1
      end
    end
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if artists[artist] == nil
        artists[artist] = 1
      else
        artists[artist] += 1
      end
    end
    artists
  end

end

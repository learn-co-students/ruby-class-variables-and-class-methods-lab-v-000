class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.key?(genre)
          @@genre_count[genre] += 1
        else @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.key?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end

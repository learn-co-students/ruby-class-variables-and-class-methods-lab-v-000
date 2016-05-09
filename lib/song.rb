
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = 1
  @@artist_count = 1
  @@genre_hash = {}
  @@artist_hash = {}

  def initialize(name, artist, genre)
    @@artist = artist
    @@name = name
    @@genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @@name
  end

  def artist
    @@artist
  end

  def genre
    @@genre
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
    @@genres.each do |genre|
      if @@genre_hash.has_key?(genre)
        @@genre_count += 1
      else
        @@genre_hash[genre] = @@genre_count
      end
    end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_hash.has_key?(artist)
        @@artist_count += 1
      else
        @@artist_hash[artist] = @@artist_count
      end
    end
    @@artist_hash
  end

end

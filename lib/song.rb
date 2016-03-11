class Song
  @@artists = []
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
    @@artists << @artist
    @@genres << @genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def new(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end

  def count
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
    @@genres.each do |genre|
      if genre_count.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

def self.artist_count
    artists_count = {}
    @@artists.each do |genre|
      if artists_count.include?(genre)
        artists_count[genre] += 1
      else
        artists_count[genre] = 1
      end
    end
    artists_count
  end
end
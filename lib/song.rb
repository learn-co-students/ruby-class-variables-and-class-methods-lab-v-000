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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] == nil
        genre_count[genre] = @@genres.count {|uniq| uniq == genre }
      end
    end

    genre_count
  end

  # {"rap" => 3, "pop" => 2}

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist] == nil
        artist_count[artist] = @@artists.count {|uniq| uniq == artist }
      end
    end

    artist_count
  end
end
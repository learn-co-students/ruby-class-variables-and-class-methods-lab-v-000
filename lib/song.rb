class Song

  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0

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
    genre = {}
    @@genres.each do |type|
      if !genre.keys.include?(type)
        genre[type] = @@genres.count(type)
      end
    end
    genre
  end

  def self.artist_count
    artist = {}
    @@artists.each do |name|
      if !artist.keys.include?(name)
        artist[name] = @@artists.count(name)
      end
    end
    artist
  end

end

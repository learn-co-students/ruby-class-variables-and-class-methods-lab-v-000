class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |e|
      if !genre_count.include?(e)
        genre_count.store(e, 1)
      else
        genre_count[e] += 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |e|
      !artist_count.include?(e) ? artist_count.store(e, 1) : artist_count[e] += 1
    end
    artist_count
  end

end

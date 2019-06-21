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
    g_count = {}
    @@genres.each do |the_genre|
      if g_count[the_genre]
        g_count[the_genre] += 1
      else
        g_count[the_genre] = 1
      end
    end
    g_count
  end

  def self.artist_count
    a_count = {}
    @@artists.each do |the_artist|
      if a_count[the_artist]
        a_count[the_artist] += 1
      else
        a_count[the_artist] = 1
      end
    end
    a_count
  end
end

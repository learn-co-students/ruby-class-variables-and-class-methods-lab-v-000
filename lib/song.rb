class Song
  attr_accessor  :name, :artist, :genre

  @@artists       =   []
  @@genres        =   []
  @@count         =   0
  @@artist_count  =   {}
  @@genre_count   =   {}

  def initialize(name, artist, genres)
    @name          = name
    @artist        = artist
    @genre         = genre
    @@artists      << artist
    @@genres       << genres
    @@count         += 1
    #@@genere_count  += 1
    #@@artist_count  += 1
  end
  def self.count
    @@count
  end

  def genre_count
    @@genre_count
  end

  def artist_count
    @@artist_count
  end

  def self.artists
    @@artist.uniq
  end

  def self.genre
    @@genres.uniq
  end
end

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists= []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count +=1

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
    @@genres.each do |style|
      unless genre.keys.include?(style)
        genre[style] = @@genres.count(style)
      end
    end
    genre
  end

  def self.artist_count
    artist ={}
    @@artists.each do |art|
      unless artist.keys.include?(art)
        artist[art] = @@artists.count(art)
      end
    end
    artist
  end

end
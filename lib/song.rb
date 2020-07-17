class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist

    @name = name
    @artist = artist
    @genre = genre
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
    @@genres.each do |song|
      if @@genre_count[song] == nil
        @@genre_count[song] = 1
      else
        @@genre_count[song] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |song|
      if @@artist_count[song] == nil
        @@artist_count[song] = 1
      else
        @@artist_count[song] += 1
      end
    end
    @@artist_count
  end

end

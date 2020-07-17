class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre_type|
      if @@genre_count[genre_type] == nil
        @@genre_count[genre_type] = 1
      else
        @@genre_count[genre_type] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |genre_type|
      if @@artist_count[genre_type] == nil
        @@artist_count[genre_type] = 1
      else
        @@artist_count[genre_type] += 1
      end
    end
    @@artist_count
  end
end

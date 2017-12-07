class Song
  attr_accessor :name, :artist, :genre
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
    @@genres.push(genre)
    @@artists.push(artist)
  end

  def self.count
    @@count
  end

  def self.genres
    no_duplicates = @@genres.uniq
    no_duplicates
  end

  def self.artists
    no_duplicates = @@artists.uniq
    no_duplicates
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] == nil
        @@genre_count[genre] = 1
      else
        @@genre_count[genre] = @@genre_count[genre] + 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist] == nil
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] = @@artist_count[artist] + 1
      end
    end
    @@artist_count
  end
end

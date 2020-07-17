class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name =  name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@genre_count = {}
    @@artist_count = {}
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
    @@genres.each do |key|
      if @@genre_count[key]
        @@genre_count[key] += 1
      else
        @@genre_count[key] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |key|
      if @@artist_count[key]
        @@artist_count[key] += 1
      else
        @@artist_count[key] = 1
      end
    end
    @@artist_count
  end

end

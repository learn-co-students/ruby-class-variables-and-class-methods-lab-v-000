class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

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
    @@genres.each do |x|
      if @@genre_count[x] == nil
        @@genre_count[x] = 1
      elsif @@genre_count[x].class == Fixnum
        @@genre_count[x] += 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |x|
      if @@artist_count[x] == nil
        @@artist_count[x] = 1
      elsif @@artist_count[x].class == Fixnum
        @@artist_count[x] += 1
      end
    end
    @@artist_count
  end
end
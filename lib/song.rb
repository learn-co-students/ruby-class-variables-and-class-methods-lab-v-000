class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genre_histogram = {}
    @@genres.each do |genre|
       if genre_histogram.has_key?(genre)
         genre_histogram[genre] += 1
       else
         genre_histogram[genre] = 1
       end
    end
    genre_histogram
  end

  def self.artist_count
    artist_histogram = {}
    @@artists.each do |artist|
       if artist_histogram.has_key?(artist)
         artist_histogram[artist] += 1
       else
         artist_histogram[artist] = 1
       end
    end
    artist_histogram
  end




end

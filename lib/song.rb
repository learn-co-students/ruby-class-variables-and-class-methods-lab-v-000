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
    @@genres << @genre
    @@artists << @artist



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
    @@genres.each do |genre_name|
      if @@genre_count.key?(genre_name)
        @@genre_count[genre_name] += 1
      else @@genre_count[genre_name] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist_name|
      if @@artist_count.key?(artist_name)
        @@artist_count[artist_name] += 1
      else
        @@artist_count[artist_name] = 1
      end
    end
    @@artist_count
  end










end

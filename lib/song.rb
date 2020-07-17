class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre

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
    i =1
    @@genres.each do |genre|
      if @@genre_count.key?(genre)
        @@genre_count[genre] = i + 1
      else
        @@genre_count[genre] = i
      end
    end
    @@genre_count
  end

  def self.artist_count
    i =1
    @@artists.each do |artist|
      if @@artist_count.key?(artist)
        @@artist_count[artist] = i + 1
      else
        @@artist_count[artist] = i
      end
    end
    @@artist_count
  end

end

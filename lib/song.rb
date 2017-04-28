

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    no_duplicates = []
    @@genres.each do |genre|
      if no_duplicates.include?(genre) == false
        no_duplicates << genre
      end
    end
    no_duplicates
  end

  def self.artists
    no_duplicates = []
    @@artists.each do |artist|
      if no_duplicates.include?(artist) == false
        no_duplicates << artist
      end
    end
    no_duplicates
  end

  def self.genre_count
    @@genre_count = {}
    @@genres.each do |genre|
      if @@genre_count.keys.include?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artist_count = {}
    @@artists.each do |artist|
      if @@artist_count.keys.include?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end


end

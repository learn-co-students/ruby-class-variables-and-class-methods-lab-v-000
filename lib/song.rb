class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genres
    @@genres = @@genres.uniq
    @@genres
  end

  def self.genre_count
    new_genre_count = {}
    value = 1
    @@genres.collect do |genre|
      if !(new_genre_count.include?(genre))
        new_genre_count[genre] = value
      else new_genre_count[genre] += 1
      end
    end
    new_genre_count
  end

  def self.artist_count
    new_artist_count = {}
    value = 1
    @@artists.collect do |artist|
      if !(new_artist_count.include?(artist))
        new_artist_count[artist] = value
      else new_artist_count[artist] += 1
      end
    end
    new_artist_count
  end

end

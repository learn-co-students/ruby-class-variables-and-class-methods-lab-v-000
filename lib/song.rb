class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count +1
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

    genre_count = {}
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
        genre_count[genre] = genre_count[genre] +1
      else
        genre_count[genre] = 1
      end
    end
    return genre_count
  end

  def self.artist_count

    artist_count = {}
    @@artists.each do |artist|
      if artist_count.keys.include?(artist)
        artist_count[artist] = artist_count[artist] +1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end



end

class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @genre = genre
    @name = name
    @artist = artist
    @@genres << @genre
    @@artists << @artist
    @@count += 1
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
    genre_count = {}
    @@genres.each do |genre|
      count = 1
      if genre_count[genre] == nil
        genre_count[genre] = count
      elsif genre_count[genre]
        count += 1
        genre_count[genre] = count
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      count = 1
      if artist_count[artist] == nil
        artist_count[artist] = count
      elsif artist_count[artist]
        count += 1
        artist_count[artist] = count
      end
    end
    artist_count
  end

end

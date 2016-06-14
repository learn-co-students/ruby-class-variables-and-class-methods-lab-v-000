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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |category|
      if genre_count.has_key?(category)
        genre_count[category] += 1
      else
        genre_count[category] = 1
      end
    end

    genre_count
  end



  def self.artist_count
    artist_count = {}
    @@artists.each do |singer|
      if artist_count.has_key?(singer)
        artist_count[singer] += 1
      else
        artist_count[singer] = 1
      end
    end

    artist_count
  end

end

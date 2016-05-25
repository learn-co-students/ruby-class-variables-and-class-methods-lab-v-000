class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
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
    return @@genres & @@genres
  end

  def self.artists
    return @@artists & @@artists
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count[genre]
        count[genre] += 1
      else
        count[genre] = 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if count[artist]
        count[artist] += 1
      else
        count[artist] = 1
      end
    end
    count
  end
end

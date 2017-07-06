class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@count = 0
  @@genres = []

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
    genre_hash = {}
    @@genres.each do |genre|
      count = 0
      @@genres.each do |genre2|
        if genre == genre2
          count += 1
        end
        genre_hash[genre] = count
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      count = 0
      @@artists.each do |artist2|
        if artist == artist2
          count += 1
        end
        artist_hash[artist] = count
      end
    end
    artist_hash
  end
end

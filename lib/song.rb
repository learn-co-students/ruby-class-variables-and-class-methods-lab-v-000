class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []


  def initialize (name, artist, genre)
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

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    return artist_hash
  end

end

taco = Song.new("taco", "time", "food")
pizza = Song.new("pizza", "time", "food")
baby_blues = Song.new("bably blues", "U2", "Rock")
puts Song.genre_count

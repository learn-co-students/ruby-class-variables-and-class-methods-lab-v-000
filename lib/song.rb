

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)

    @@artists << artist

    @@genres << genre

    @@count += 1

    @artist = artist
    @genre = genre
    @name = name

  end

  def name
    @name
  end

  def self.count
    @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] += 1
    end
    artist_count
  end

end

#teardrop = Song.new("Teardrop", "Massive Attack", "Trip Hop")

#cherry_blossom_girl = Song.new("Cherry Blossom Girl", "Air", "Electronic")

#atliens = Song.new("ATLiens", "Outkast", "Rap")

#tupac = Song.new("California Love", "Tupac", "Rap")

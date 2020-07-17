class Song

  @@count = 0
  @@genres = []
  @@artists = []


  attr_accessor :name, :genre, :artist

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end




  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |name|
      artist_count[name] += 1
    end
    artist_count
  end

end

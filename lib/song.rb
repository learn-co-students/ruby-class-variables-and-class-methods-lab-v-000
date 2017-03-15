class Song
  attr_accessor  :name, :artist, :genre

  @@count = 0

  @@artists = []

  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @artist_array = []
      @@artists.each do |artist|
        @artist_array << artist unless @artist_array.include?(artist)
      end
  @artist_array
  end

  def self.genres
    @genre_array = []
      @@genres.each do |genre|
        @genre_array << genre unless @genre_array.include?(genre)
      end
      @genre_array
  end

  def self.genre_count
    genre_hash = {}
    @genre_array.each do |genre|
      genre_hash[genre] = [1]
    end
    genre_hash
  end
end

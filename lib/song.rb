class Song
  attr_reader :name, :artist, :genre

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
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_hash = {}
    count = 1
      @@genres.each do |genre|
        if !genre_hash.has_key?(genre)
          count = 1
          genre_hash[genre] = count
        else
          count += 1
          genre_hash[genre] = count
        end
      end

    genre_hash
   end

  def self.artist_count
    artist_hash = {}
    count = 1
      @@artists.each do |artist|
        if !artist_hash.has_key?(artist)
          count = 1
          artist_hash[artist] = count
        else
          count += 1
          artist_hash[artist] = count
        end
      end

      artist_hash
   end
end


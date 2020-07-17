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
    hsh = {}
      @@genres.each do |i|
        if hsh.has_key?(i)
          hsh[i] += 1
        else
          hsh[i] = 1
        end
      end
      hsh
  end


  def self.artist_count
    hsh = {}
      @@artists.each do |i|
        if hsh.has_key?(i)
          hsh[i] += 1
        else
          hsh[i] = 1
        end
      end
      hsh
  end

end

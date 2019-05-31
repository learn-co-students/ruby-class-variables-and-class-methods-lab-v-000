class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
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
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
      if !@@genres.include?(genre)
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each do |artist|
      if !@@artists.include?(artist)
        artists_hash[artist] = 1
      else
        artists_hash[artist] +=1
      end
    end
    artists_hash
  end

end

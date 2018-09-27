class Song
attr_accessor :name, :artist, :genre

@@count = 0 # class variables
@@genres = []
@@artists = []

  def initialize (name, artist, genre)
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
    @@genres.uniq! # .uniq! removes duplicates from self
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] # if genre already included in hash/object
        genre_count[genre] += 1
      else
        genre_count[genre] = 1 # if new genre
      end
    end
    return genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end



end

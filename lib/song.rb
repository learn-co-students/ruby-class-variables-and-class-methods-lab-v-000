class Song

attr_accessor :name, :artist, :genre

@@count = 0 #track number of songs
@@genres = [] #array of all genres
@@artists = [] #array of all artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1 #increases by 1 each time Song.new is run
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
    genre_count = {}

    @@genres.each do |genre|

      if genre_count.keys.include?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |artist|

      if artist_count.has_key?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end

Song.new("song1", "artist1", "rap")
Song.new("song2", "artist2", "rap")
Song.new("song3", "artist2", "rock")
Song.new("song4", "artist3", "country")

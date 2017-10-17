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
    return @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each { |genre| genre_count[genre] += 1 }
    genre_count
  end

    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each { |artist| artist_count[artist] += 1 }
      artist_count
    end


end

#produce individual songs
#each song has a name, an artist and genre
#song class keeps track of number of songs that it creates
#song.count
#song.artists #=> shows us all of the artists of existing songs
#songs.genres #=> shows us all genres of existing songs
#song.genre_count #=> returns hash of number of songs in each genre created
#song.artist_count #=> returns hash of number of songs each artist is responsible for

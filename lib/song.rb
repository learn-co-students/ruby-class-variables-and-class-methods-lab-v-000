class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
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
    song_genres = {}
    @@genres.each do |genre|
      if song_genres[genre]
        song_genres[genre] += 1
      else
        song_genres[genre] = 1
        end
      end
      song_genres
  end

  def self.artist_count
    song_artists = {}
    @@artists.each do |artist|
      if song_artists[artist]
        song_artists[artist] += 1
      else
        song_artists[artist] = 1
        end
      end
      song_artists
  end

end

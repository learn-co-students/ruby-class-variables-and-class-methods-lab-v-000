
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
    @@artists << artist
    @@genres << genre
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

  def self.artist_count
    songs_per_artist = {}
    @@artists.each do |artist|
      if !songs_per_artist.keys.include?(artist)
        songs_per_artist[artist] = @@artists.count(artist)
      end
    end
    songs_per_artist
  end

  def self.genre_count
    songs_per_genre = {}
    @@genres.each do |genre|
      if !songs_per_genre.keys.include?(genre)
        songs_per_genre[genre] = @@genres.count(genre)
      end
    end
    songs_per_genre
  end  

end
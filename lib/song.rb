class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    number_of_genres = {}
    @@genres.each do |song_genre|
      if number_of_genres[song_genre]
        number_of_genres[song_genre] += 1
      elsif
        number_of_genres[song_genre] = 1
      end
    end
    number_of_genres
  end

  def self.artist_count
    number_of_artists = {}
    @@artists.each do |artist_name|
      if number_of_artists[artist_name]
        number_of_artists[artist_name] += 1
      else
        number_of_artists[artist_name] = 1
      end
    end
    number_of_artists
  end

end

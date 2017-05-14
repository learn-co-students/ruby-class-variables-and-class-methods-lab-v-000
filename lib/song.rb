class Song
  attr_reader :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist_name, song_genre)
    @artist = artist_name
    @@artists << artist_name
    @genre = song_genre
    @@genres << @genre
    @name = song_name
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |unique_artist|
      unique_artists << unique_artist unless unique_artists.include?(unique_artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |unique_genre|
      unique_genres << unique_genre unless unique_genres.include?(unique_genre)
    end
    unique_genres
  end

  def self.genre_count
    genres_count = {}
  @@genres.each do |genre|
    if genres_count.include?("#{genre}")
      genres_count["#{genre}"] += 1
    else
      genres_count["#{genre}"] =  1
    end
  end
  genres_count
  end

  def self.artist_count
    artist_count = {}
  @@artists.each do |artist|
    if artist_count.include?("#{artist}")
      artist_count["#{artist}"] += 1
    else
      artist_count["#{artist}"] =  1
    end
  end
  artist_count
  end

end

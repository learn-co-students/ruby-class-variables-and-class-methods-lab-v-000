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
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each { |genre| unique_genres << genre if !unique_genres.include?(genre) }
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include?(artist)
        unique_artists << artist
      end
    end
    unique_artists
  end

  def self.genre_count
    genre_and_num_songs = Hash.new(0)
    @@genres.each { |genre| genre_and_num_songs[genre] += 1 }
    genre_and_num_songs
  end

  def self.artist_count
    artist_and_num_songs = Hash.new(0)
    @@artists.each { |artist| artist_and_num_songs[artist] += 1 }
    artist_and_num_songs
  end

end

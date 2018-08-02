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
    view_genres = []
    i = 0
    while i < @@genres.length
      if view_genres.include?(@@genres[i]) == false
        view_genres << @@genres[i]
      end
      i += 1
    end
    view_genres
  end

  def self.artists
    view_artists = []
    i = 0
    while i < @@artists.length
      if view_artists.include?(@@artists[i]) == false
        view_artists << @@artists[i]
      end
      i += 1
    end
    view_artists
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
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
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end

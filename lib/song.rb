class Song

  attr_reader :name, :artist, :genre

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
    list_of_genres = []
    @@genres.each do |genre|
      list_of_genres << genre unless list_of_genres.include?(genre)
    end
      list_of_genres
  end

  def self.artists
    list_of_artists = []
    @@artists.each do |artist|
      list_of_artists << artist unless list_of_artists.include?(artist)
    end
    list_of_artists
    end

    def self.genre_count
      genres_count = {}
      @@genres.each do |genre|
        if genres_count[genre]
          genres_count[genre] += 1
        else
          genres_count[genre] = 1
        end
      end
      genres_count
    end

    def self.artist_count
      artists_count = {}
      @@artists.each do |artist|
        if artists_count[artist]
          artists_count[artist] += 1
        else
          artists_count[artist] = 1
        end
      end
      artists_count
    end


end

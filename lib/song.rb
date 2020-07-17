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

  def self.genre_count
    genre_count = {}

    #ridiculous one line refactor
    @@genres.each { |genre| genre_count[genre] ? genre_count[genre] += 1 : genre_count[genre] = 1 }

    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |genre|
      if !artist_count.has_key?(genre)
        artist_count[genre] = 1
      else
        artist_count[genre] += 1
      end
    end

    artist_count
  end

end

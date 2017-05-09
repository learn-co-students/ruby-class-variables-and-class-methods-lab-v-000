class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize (name, artist, genre)
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

  def self.artists
    unique_artists = []
    @@artists.each do |i|
      if !unique_artists.include? i
        unique_artists << i
        @@artist_count["#{i}"] = 1
      else
        @@artist_count["#{i}"] += 1
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |i|
      if !unique_genres.include? i
        unique_genres << i
        @@genre_count["#{i}"] = 1
      else
        @@genre_count["#{i}"] += 1
      end
    end
    unique_genres
  end

  def self.artist_count
    self.artists
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end
end

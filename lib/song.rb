class Song
  attr_accessor(:name, :artist, :genre)

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

  def self.genres
    unique_genres = []
    @@genres.each do |i|
      if !unique_genres.include?(i)
        unique_genres << i
      end
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |i|
      if !unique_artists.include?(i)
        unique_artists << i
      end
    end
    unique_artists
  end

  def self.genre_count
    count_of_genres = {}
    @@genres.map do |k|
      if count_of_genres.include?(k)
        count_of_genres[k] += 1
      else
        count_of_genres[k] = 1
      end
    end
    count_of_genres
  end

  def self.artist_count
    count_of_artists = {}
    @@artists.map do |k|
      if count_of_artists.include?(k)
        count_of_artists[k] += 1
      else
        count_of_artists[k] = 1
      end
    end
    count_of_artists
  end

end

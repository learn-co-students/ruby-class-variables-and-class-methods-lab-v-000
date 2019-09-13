class Song
  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

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

  def self.artists  # unique array - delete any duplicates
    @@artists.to_set
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count  # {"rap" => 5, "rock" => 1, "country" => 3}
    @@genres.each do |genre|
      @@genre_count[genre] ||= 0    # sets key value if it doesn't exist yet
      @@genre_count[genre] += 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count
  end
end

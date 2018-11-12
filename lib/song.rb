class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
    total = {}
    @@genres.each do |genre|
      if total.include?(genre)
        total[genre] += 1
      else
        total[genre] = 1
      end
    end
    total
  end

  def self.artist_count
  total = {}
  @@artists.each do |genre|
    if total.include?(genre)
      total[genre] += 1
    else
      total[genre] = 1
    end
  end
  total
  end
end

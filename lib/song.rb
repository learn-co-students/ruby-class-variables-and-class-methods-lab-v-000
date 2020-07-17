class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    #if @@genre_count.has_key?(genre)
    # @@genre_count[genre] = @@genre_count[genre] + 1
    #else
    #  @@genre_count[genre] = 1
    #end
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
    counts = {}
    @@genres.each do |genre|
      if counts.has_key?(genre)
        counts[genre] += 1
      else
        counts[genre] = 1
      end
    end
    counts
  end

  def self.artist_count
    counts = {}
    @@artists.each do |artist|
      if counts.has_key?(artist)
        counts[artist] += 1
      else
        counts[artist] = 1
      end
    end
    counts
  end  

end
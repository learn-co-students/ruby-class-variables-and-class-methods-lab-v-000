class Song

  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@names = []
  @@genre_count = {}
  @@artist_count = {}

  def self.count
    @@count
  end

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@names << name
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count

    @@genres.each do |genre|
      if @@genre_count.has_key?("#{genre}")
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
      @@genre_count
  end

  def self.artist_count
    @@artists.each do |artists|
          if @@artist_count.has_key?("#{artists}")
        @@artist_count[artists] += 1
      else
        @@artist_count[artists] = 1
      end
    end
      @@artist_count
  end
end
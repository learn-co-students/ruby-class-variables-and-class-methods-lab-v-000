class Song
attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
      @@count
    end

    def self.artists
        @@artists.uniq!
      end

    def self.genres
      @@genres.uniq!
    end

    def self.genre_count
      genre_count = {}
      @@genres.each do |genre|
      if genre_count.include?(genre) then genre_count[genre] += 1 else genre_count[genre] = 1
      end
    end
    genre_count
  end
    def artist_count

    end
end

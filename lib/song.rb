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

    def genre_count
      genre = {}
      genre.collect do |genre|
      if gerne.includes?(genre) then genre[genre] =+ 1 else genre[genre] = 1
      end
    end
  end
    def artist_count

    end
end

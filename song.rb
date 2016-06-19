class Song
  @@count = 0
  @@artists = []
  @@genres = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!

  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |g|
      if genre_count.has_key?(g)
        genre_count[g] += 1
      elsif
        genre_count[g] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |a|
      if artist_count.has_key?(a)
        artist_count[a] +=1
        elsif
          artist_count[a] = 1
        end
      end
      artist_count
    end
end

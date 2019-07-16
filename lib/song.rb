class Song

@@count = 0
@@artists = []
@@genres = []
@@names = []

attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)

      @artist = artist
      @name = name
      @genre = genre
      @@artists << @artist
      @@names << @name
      @@genres << @genre
      @@count += 1

    end

    def self.count
      @@count
    end

    def self.artists
      @@artists.uniq
    end
{
  pop:1,
  rap: 3
}
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}

    @@genres.each do |genre|
    if genre_count[genre]
     genre_count[genre] += 1
   else
     genre_count[genre] = 1
      end
   end
    return genre_count
  end

    def self.artist_count
      artist_count = {}
      @@artists.each do |artist|

      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end

end

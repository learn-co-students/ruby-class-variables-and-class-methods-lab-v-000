class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @@genre_count = {}
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist

    @@count +=1

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

    genre_count = {}

    @@genres.each do |genre|


    if genre_count.include?(genre)
      genre_count[genre] +=1
    else
      genre_count[genre] = 1

      end
    end
    genre_count
  end

  def self.artist_count

    artist_count = {}

    @@artists.each do |artist|


    if artist_count.include?(artist)
      artist_count[artist] +=1
    else
      artist_count[artist] = 1

      end
    end
    artist_count
  end
  
end

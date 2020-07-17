class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genre_count = Hash.new
  @@artist_count = Hash.new
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists<<@artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genres
    @@genres=@@genres.uniq
    @@genres
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        @@genre_count[genre]+=1
      else
        @@genre_count[genre] = 1
        end
      end
      @@genre_count
  end
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist]+=1
      else
        @@artist_count[artist] = 1
      end
    end
      @@artist_count
  end
end
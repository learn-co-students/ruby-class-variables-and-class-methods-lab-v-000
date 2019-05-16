class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
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
    count = {}
    @@genres.each do |genre_name|
      if count.include?(genre_name)
        count[genre_name] += 1
      else
        count[genre_name] = 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist_name|
      if count.include?(artist_name)
        count[artist_name] += 1
      else
        count[artist_name] = 1
      end
    end
    count
  end

end

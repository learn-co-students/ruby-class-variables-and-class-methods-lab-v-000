class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genreobject = {}
    @@genres.each do |genre|
      if genreobject.include?(genre)
          genreobject[genre] +=1
      else
        genreobject[genre] = 1
      end
    end
    genreobject
  end

  def self.artist_count
    artistobject = {}
    @@artists.each do |artist|
      if artistobject.include?(artist)
          artistobject[artist] +=1
      else
        artistobject[artist] = 1
      end
    end
    artistobject
  end
end

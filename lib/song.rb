class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    list = []
    @@genres.each do |genre|
      if list.include?(genre) == false
        list << genre
      end
    end
    list
  end

  def self.genre_count
    histrogram = {}
    @@genres.each do |genre|
      if histrogram.include?(genre) == false
        histrogram[genre] = 1
      else histrogram[genre] += 1
      end
    end
    histrogram
  end



  def self.artists
    list = []
    @@artists.each do |artist|
      if list.include?(artist) == false
        list << artist
      end
    end
    list
  end

  def self.artist_count
    histrogram = {}
    @@artists.each do |artist|
      if histrogram.include?(artist) == false
        histrogram[artist] = 1
      else histrogram[artist] += 1
      end
    end
    histrogram
  end

end

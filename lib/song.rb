class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = 0
  @@genre_count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@genres << genre
    @@artists << artist


  end
  def self.count
    @@count
  end
  def self.artists
    newarray = []
    @@artists.each do |artist|
      if !newarray.include?(artist)
        newarray << artist
      end
    end
    newarray
  end
  def self.genres
    newarray = []
    @@genres.each do |genre|
      if !newarray.include?(genre)
        newarray << genre
      end
    end
    newarray
  end

  def self.genre_count
    newhash = {}
    counter = 0
    @@genres.each do |genre|
      if newhash[genre] == nil
        newhash[genre] = 1
        counter = counter + 1
      else
        newhash[genre] = counter + 1
      end
    end
    newhash
  end

  def self.artist_count
    newhash = {}
    counter = 0
    @@artists.each do |artist|
      if newhash[artist] == nil
        newhash[artist] = 1
        counter = counter + 1
      else
        newhash[artist] = counter + 1
      end
    end
    newhash
  end

  def name
    @name
  end
  def artist
    @artist
  end
  def genre
    @genre
  end
end

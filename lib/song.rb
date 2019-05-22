class Song
attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    return @@count
  end

  def self.artists
    array = []
    counter = 0
    while counter < @@artists.length
      if array.include?(@@artists[counter]) == false
        array.push(@@artists[counter])
      end
      counter = counter + 1
    end
    return array
  end

  def self.genres
    array = []
    counter = 0
    while counter < @@genres.length
      if array.include?(@@genres[counter]) == false
        array.push(@@genres[counter])
      end
      counter = counter + 1
    end
    return array
  end

  def self.genre_count
    hash = {}
    self.genres.each do |genre|
      counter = 0
      @@genres.each do |x|
        if x == genre
          counter = counter + 1
        end
      end
      hash[genre] = counter
    end
    return hash
  end

  def self.artist_count
    hash = {}
    self.artists.each do |artist|
      counter = 0
      @@artists.each do |x|
        if x == artist
          counter = counter + 1
        end
      end
      hash[artist] = counter
    end
    return hash
  end
end

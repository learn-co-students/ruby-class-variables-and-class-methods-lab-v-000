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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    lst1 = []
    @@genres.each do |i|
      if !(lst1.include?(i))
        lst1 << i
      end
    end
    return lst1
  end

  def self.artists
    lst2 = []
    @@artists.each do |e|
      if !(lst2.include?(e))
        lst2 << e
      end
    end
    return lst2
  end

  def self.genre_count
    hsh1 = {}
    count = 0
    @@genres.each do |e|
      if !(hsh1.has_key?(e))
        count = 1
        hsh1[e] = count
      else count += 1
        hsh1[e] = count
      end
    end
    return hsh1
  end


  def self.artist_count
    hsh2 = {}
    count = 0
    @@artists.each do |e|
      if !(hsh2.has_key?(e))
        count = 1
        hsh2[e] = count
      else count += 1
        hsh2[e] = count
      end
    end
    return hsh2
  end

end
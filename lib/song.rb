class Song

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end


  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


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
    list = {}
    @@genres.each {|curr| list.keys.include?(curr) ? list[curr]+= 1 : list[curr] = 1}
    list
  end

  def self.artist_count
    list = {}
    @@artists.each {|curr| list.keys.include?(curr) ? list[curr]+= 1 : list[curr] = 1}
    list
  end

end

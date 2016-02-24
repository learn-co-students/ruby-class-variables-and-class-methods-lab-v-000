class Song

  attr_accessor :name, :artist, :genre

  @@count = 0 
  @@artists = []
  @@genres = []
 
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
    frequencies = Hash.new(0)
      @@genres.each {|count| frequencies[count] ++1}
      frequencies = frequencies.sort_by do |genres, count|
      count.to_h
      end
  end

  def self.artist_count
    #same as above histogram but for artists
  end

end
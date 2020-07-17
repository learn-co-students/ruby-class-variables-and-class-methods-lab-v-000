class Song

      @@count = 0
      @@genres = []
      @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
      #unless @@artist.include?(@artist)
      @@artists << @artist
     # end
    @genre = genre
     # unless @@genres.include?(@genre)
      @@genres << @genre
     # end
    @@count += 1
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    styles = {}
    @@genres.uniq.each { |style| styles[style] = @@genres.count(style) }
    styles
  end

  def self.artist_count
    nicknames = {}
    @@artists.uniq.each { |person| nicknames[person] = @@artists.count(person) }
    nicknames
  end


  def self.count
    @@count
  end

end
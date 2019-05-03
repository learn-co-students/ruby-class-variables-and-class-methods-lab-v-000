class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq{|artist| artist}
  end


  def self.genres
    @@genres.uniq{|genre| genre}
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end

end

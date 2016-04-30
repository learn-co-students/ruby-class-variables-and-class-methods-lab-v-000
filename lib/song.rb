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
    artist_list = []
    @@artists.each do |artist|
      artist_list << artist unless artist_list.include?(artist)
    end
    artist_list
  end

  def self.genres
    genre_list = []
    @@genres.each do |genre|
      genre_list << genre unless genre_list.include?(genre)
    end
    genre_list
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |genre,count| count[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,count| count[artist] += 1 }
end

end

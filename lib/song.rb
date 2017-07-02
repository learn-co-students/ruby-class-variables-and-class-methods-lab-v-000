class Song

  @@count=0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) {|artist, count| count[artist] += 1}
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.key?(genre)
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end#end of @@genres.each
    hash
  end#end of self.genre_count

end

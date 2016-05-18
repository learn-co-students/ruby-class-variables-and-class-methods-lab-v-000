class Song
  attr_accessor :name, :artist, :genre


  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre

  end

  def self.all_genres
    @@genres
  end

  def self.count
    @@count
  end

  def self.artists
    return_artists =[]
    return_artists = @@artists.uniq
    return_artists
  end

  def self.genres
    return_genres =[]
    return_genres = @@genres.uniq
    return_genres
  end

  def self.genre_count
    newhash = {}
    genre_array = @@genres
    genre_array.each do |name|
      value = genre_array.count(name)
      newhash.has_key?(name) ? name : newhash= {name => value}
    end
    newhash
  end
end

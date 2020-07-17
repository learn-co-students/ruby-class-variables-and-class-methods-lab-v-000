class Song
  
  @@count = 0;
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

  attr_reader :name
  attr_reader :artist
  attr_reader :genre

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
    hash_genres = {}
    self.genres.each {|genre| hash_genres[genre] = 0}
    @@genres.each {|genre| hash_genres[genre] += 1}
    hash_genres
  end

  def self.artist_count
    hash_artists = {}
    self.artists.each {|artists| hash_artists[artists] = 0}
    @@artists.each {|artists| hash_artists[artists]+=1}
    hash_artists
  end
end
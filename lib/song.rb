class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

#intialize method
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genre = genre
    @@genres << genre
    @@count += 1
  end
    def self.count
      @@count
    end
#count method
  def count
    @@count
  end
  
#genre method
  def self.genres
    @@genres.uniq
  end
  
#artists method
  def self.artists
    @@artists.uniq
  end
  
#genre_count method
  def self.genre_count 
    hash = Hash.new(0)
    @@genres.each do |e| hash[e] += 1
  end
  hash
  end

#artist_count
  def self.artist_count 
    hash = Hash.new(0)
    @@artists.each do |e| hash[e] += 1
  end
  hash
  end
end
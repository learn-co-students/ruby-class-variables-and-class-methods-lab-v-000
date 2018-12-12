class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  
  def self.count 
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genres_hash = {}
     @@genres.each do |each_genre|
       if genres_hash[each_genre]
          genres_hash[each_genre] += 1 
        else
          genres_hash[each_genre] = 1
       end
     end
     genres_hash
  end 

  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
end 
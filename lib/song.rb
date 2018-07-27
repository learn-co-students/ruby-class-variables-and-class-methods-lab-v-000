class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :count, :artists, :genres, :genre_count, :artist_count
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre]
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
      @@genre_count
    
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
      @@artist_count
    
  end
  
  
end
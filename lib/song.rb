class Song

  attr_reader :name, :artist, :genre 

  @@count = 0
  @@artists = [] 
  @@genres = [] 
  @@genre_hash = {}
  @@artist_hash = {} 

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre 
    @@count += 1 
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
    @@genres.each do |genre|
      if !@@genre_hash.keys.include?(genre)
        @@genre_hash[genre] = 0 
      end
        @@genre_hash[genre] += 1 
    end
    @@genre_hash
  end

  def self.artist_count 
    @@artists.each do |artist|
      if !@@artist_hash.keys.include?(artist)
        @@artist_hash[artist] = 0 
      end 
        @@artist_hash[artist] += 1 
    end
    @@artist_hash
  end




end
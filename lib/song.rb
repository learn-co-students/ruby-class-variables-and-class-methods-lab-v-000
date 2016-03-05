class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    #if !@@genres.include?(genre)
    @@genres << genre #lol wat i think in the instructions they didnt want use to include dupes
    #end
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    count_hash = {}
    @@genres.each do |genre|
      count_hash.has_key?(genre) ? count_hash[genre] += 1 : count_hash[genre] = 1
    end
    count_hash
  end
  
  def self.artist_count
    count_hash = {}
    @@artists.each do |artist|
      count_hash.has_key?(artist) ? count_hash[artist] += 1 : count_hash[artist] = 1
    end
    count_hash
  end

end

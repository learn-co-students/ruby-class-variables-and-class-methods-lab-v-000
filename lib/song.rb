class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = 0
  @@artist_count = 0
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    artist_list = []
    @@artists.each do |artist|
      if artist_list.include?(artist)
      else
        artist_list << artist
      end
    end
    artist_list
  end

  def self.genres
    genre_list = []
    @@genres.each do |genre|
      if genre_list.include?(genre)
      else
        genre_list << genre
      end
    end
    genre_list 
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.keys.include?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.keys.include?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
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

def self.genres
  genre_list = []
  @@genres.each do |genre|
    if !genre_list.include?(genre)
      genre_list << genre
    end
  end
  genre_list
end

  def self.artists
    artist_list = []
    @@artists.each do |artist|
      if !artist_list.include?(artist)
        artist_list << artist
      end
    end
    artist_list
  end

  def self.genre_count
    #returns a hash of the genres and the number of songs that have those genres
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash[genre]+=1
      else
        genre_hash[genre]=1
      end
    end
    genre_hash
  end

  def self.artist_count
    #returns a hash of the artists and the number of songs by that artist
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash[artist]+=1
      else
        artist_hash[artist]=1
      end
    end
  artist_hash
end
end

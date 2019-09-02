class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    answer = []
    @@genres.each do |genre|
      answer << genre unless answer.include?(genre)
    end
    answer
  end

  def self.artists
    answer = []
    @@artists.each do |artist|
      answer << artist unless answer.include?(artist)
    end
    answer
  end

  def self.genre_count
    genre_hash ={}
    @@genres.each do |genre, count|
      if genre_hash[genre]
        genre_hash[genre] += 1
      else genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist, count|
      if artist_hash[artist]
        artist_hash[artist] += 1
      else artist_hash[artist] = 1
      end
    end
    artist_hash 
  end

end

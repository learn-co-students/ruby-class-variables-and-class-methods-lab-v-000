class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
   @@count
  end
  def self.artists
    new_array = []
    @@artists.each do |person|
      if !new_array.include?(person)
        new_array << person
      end
    end
    @@artists = new_array
  end
  def self.genres
    new_array = []
    @@genres.each do |genre|
      if !new_array.include?(genre)
        new_array << genre
      end
    end
    @@genres = new_array
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
      genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
      artist_count
  end
end
class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    genre_count_hash = Hash.new(0)
    @@genres.each do |genre|
      genre_count_hash[genre]+=1
    end
    genre_count_hash
  end

  def self.artist_count
    songs_by_artist = Hash.new(0)
    @@artists.each do |songs|
      songs_by_artist[songs]+=1 unless !@@artists.include?(songs) || songs.nil?
    end
    songs_by_artist
  end
end

Song.new("Sorry Not Sorry", "Demi", "pop")

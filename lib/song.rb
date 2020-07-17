class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name,artist,genre)
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
    unique_art = []
    @@artists.each do |artist|
      unless unique_art.any? { |unique_artist| unique_artist == artist }
        unique_art << artist
      end
    end
    unique_art
  end

  def self.genres
    unique_gen = []
    @@genres.each do |genre|
      unless unique_gen.any? { |unique_genre| unique_genre == genre }
        unique_gen << genre
      end
    end
    unique_gen
  end

  def self.artist_count
    art_count = {}
    @@artists.each do |artist|
      art_count[artist] ||= art_count[artist] = 0
      art_count[artist] += 1
    end
    art_count
  end

  def self.genre_count
    gen_count = {}
    @@genres.each do |genre|
      gen_count[genre] ||= gen_count[genre] = 0
      gen_count[genre] += 1
    end
    gen_count
  end
end
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@all = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@all.push(self)
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    count = {}
    songs = @@all.uniq{|song| song.name}
    genres = songs.collect{|song| song.genre}
    genres = genres.uniq{|genre| genre}
    genres.each do |genre|
      count[genre] = songs.count {|song| song.genre == genre}
    end
    count
end

def self.artist_count
  count = {}
  songs = @@all.uniq{|song| song.name}
  artists = songs.collect{|song| song.artist}
  artists = artists.uniq{|artist| artist}
  artists.each do |artist|
    count[artist] = songs.count {|song| song.artist == artist}
  end
  count
end
end

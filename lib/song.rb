class Song
  attr_accessor :name, :artist and :genre
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counter = 0
    genre_count = Hash.new
    unique_genre = @@genres.uniq
    unique_genre.each {|genre| genre_count[genre]= 0 }
    count = unique_genre.count
    until counter > count
      @@genres.each {|genre| genre == unique_genre[counter] ? genre_count[genre] += 1 : nil }
      counter += 1
    end
    genre_count
  end

  def self.artist_count
    counter = 0
    artist_count = Hash.new
    unique_artist = @@artists.uniq
    unique_artist.each {|artist| artist_count[artist]= 0 }
    count = unique_artist.count
    until counter > count
      @@artists.each {|artist| artist == unique_artist[counter] ? artist_count[artist] += 1 : nil }
      counter += 1
    end
    artist_count
  end
end

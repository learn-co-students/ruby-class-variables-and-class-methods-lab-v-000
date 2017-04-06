require 'pry'
class Song
  attr_reader :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  @@songs_by_genre_count
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count +=1
    @@genres<<genre
    @@artists<<artist


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
    genre_count={}
    genre_counter=0
    @@genres.each do |genre|
      genre_count.include?(genre)? genre_counter +=1: genre_counter=1
      genre_count[genre]=genre_counter
    end
    genre_count
  end

  def self.artist_count
    artist_count={}
    artist_counter=0
    @@artists.each do|artist|
      artist_count.include?(artist)? artist_counter +=1: artist_counter=1
      artist_count[artist]=artist_counter
    end
    artist_count
  end
end

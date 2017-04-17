require 'pry'
class Song
  @@artists=[]
  @@genres=[]
  @@count=0
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists<<artist
    @@genres<<genre
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
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
    genre_hash={}
    @@genres.each do |genre|
      genre_hash[genre]=0 if !genre_hash.has_key?(genre)
      genre_hash[genre]+=1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash={}
    @@artists.each do |artist|
      artist_hash[artist]=0 if !artist_hash.has_key?(artist)
      artist_hash[artist]+=1
    end
    artist_hash
  end
end
lucifer= Song.new("Lucifer", "Jay-Z", "rap" )
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

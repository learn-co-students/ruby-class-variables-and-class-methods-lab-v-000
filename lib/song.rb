
class Song
  attr_accessor :name, :artist, :genre


  @@count = 0
  @@genres = []
  @@artists = []

  def new(name,artist,genre)
  end

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
    new_array = []
    @@genres.each do |genre|
      if new_array.count(genre) == 0
        new_array << genre
      end
    end
   new_array
  end

  def self.artists
    new_array = []
    @@artists.each do |artist|
      if new_array.count(artist) == 0
        new_array << artist
      end
    end
   new_array
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if count[genre] == nil
        count[genre] = @@genres.count(genre)
      end
    end
  count
end

def self.artist_count
  count = {}
  @@artists.each do |artist|
    if count[artist] == nil
      count[artist] = @@artists.count(artist)
    end
  end
count
end


end

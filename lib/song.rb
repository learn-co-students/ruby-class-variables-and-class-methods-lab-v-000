require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists =[]
  @@genres = []


  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.compact.uniq
  end

  def self.genres
    @@genres.compact.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.include?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.include?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end


end #End of Class

# rock = Song.new("The Tide", "Yvete Young", "Pop")
# rock2 = Song.new("Low", "Yvete Young", "Pop")
# now = Song.new("Now", "Grace Mitchell", "Rock")
# wu = Song.new("CREAM", "Wu-Tang", "Rap")
# wu2 = Song.new("Protect Ya Neck", "Wu-Tang", "Rap")
# rock.genre_count

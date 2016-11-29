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
    @@artists << artist
  end

  def self.count 
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
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
      if artist_hash.has_key?(artist)
        artist_hash[artist] += 1
      else  
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end
end

# Song.new("Blame it on the rain", "MiliVanilli", "pop")
# Song.new("Peace or Violence", "Stromae", "French")
# Song.new("Papparazzi", "Lady Gaga", "pop")
# Song.new("Lampedusa", "Christophe Mae", "French")
# Song.new("Three Little Birds", "Bob Marley", "Regee")
# Song.new("Is this love", "Bob Marley", "Regee")
# Song.new("Hail Mary", "2-Pac", "Rap")


# puts "song count #{Song.count}"
# puts "genre count #{Song.genres}"
# puts "genre_hash #{Song.genre_count}"
# puts "Artist_hash #{Song.artist_count}"


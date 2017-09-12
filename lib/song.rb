class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1
    @@genres << genre
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
    @@genres.each {|k| genre_hash.key?(k) ? genre_hash[k] += 1 : genre_hash[k] = 1}
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |k|
      if artist_hash.key?(k)
        artist_hash[k] += 1
      else
        artist_hash[k] = 1
      end
    end
    artist_hash
  end
end

#@@genres.each {|k| genre_hash.key?(k) ? genre_hash[k] += 1 : genre_hash[k] = 1}
#Hash[@@genres.collect{|k| [k, k.size]}]


# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "country")
# robocop = Song.new("Robocop", "Kanye", "rap")
# girls = Song.new("girls", "Beyonce", "rap")

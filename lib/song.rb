require 'pry'

class Song
  attr_accessor :name, :artist, :genre, :totals_per_genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
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
    @@genres.uniq  # #uniq method returns a new array after removing duplicate values in self.
  end

  def self.artists
    @@artists.uniq
  end

  # Need Song class to be able to keep track of the number of songs of each genre it creates.
  # Should return => {"rap" => 5, "rock" => 1, "country" => 3}
  def self.genre_count
    genre_total = {}  # assign variable an empty hash
    @@genres.each do |genre|  # iterate through array of genres - remember, in a hash a duplicate key overwrites existing key
      if
        genre_total[genre]  # Note: by default, value can be the number in the order in which the key was added
        genre_total[genre] += 1  # If hash already contains a key of a particular genre, increment the value of that key by one.
      else
        genre_total[genre] = 1  # Otherwise, create a new key/value pair with a value of "1"
      end
      #binding.pry
    end
    genre_total
  end

  # We want our Song class to reveal to us the number of songs each artist is responsible for.
  # Should return => {"Beyonce" => 17, "Jay-Z" => 40}
  def self.artist_count
    artist_total = {}  # assign variable an empty hash
    @@artists.each do |artist|  # iterate through array of artists - remember, in a hash a duplicate key overwrites existing key
      if
        artist_total[artist]  # Note: by default, value can be the number in the order in which the key was added
        artist_total[artist] += 1  # If hash already contains a key of a particular artist, increment the value of that key by one.
      else
        artist_total[artist] = 1  # Otherwise, create a new key/value pair with a value of "1"
      end
      #binding.pry
    end
    artist_total
  end
end


ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "Rap")
creed = Song.new("Creed", "Rich Mullins", "Christian")
i_could_only_image = Song.new("I Could Only Image", "MercyMe", "Christian")
bring_the_rain = Song.new("Bring the Rain", "MercyMe", "Christian")
dust_in_the_wind = Song.new("Dust in the Wind", "Kansas", "Rock")
tuff_puzzle = Song.new("Tuff Puzzle", "Acoustic Alchemy", "Jazz")
chicago_song = Song.new("Chicago Song", "David Sanborn", "Jazz")

#puts creed.song_name
#puts creed.artist
#puts creed.genre

puts Song.count
puts Song.genre_count
puts Song.artist_count

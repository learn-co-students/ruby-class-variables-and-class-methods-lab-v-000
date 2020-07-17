# require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
    # puts "new song added: #{@name}, #{@artist}, #{@genre}"
    # puts "current genres: #{@@genres}"
    # puts "current artists: #{@@artists}"
    # puts "count: #{@@count}"
  end

  def self.count
    @@count
    # puts "Song count: #{@@count}"
  end

  def self.genres
    genres_list = []
    @@genres.each { |g| genres_list << g unless genres_list.include?(g) }
    genres_list
    # puts "genres: #{genres_list}"
    # @@genres.uniq
    # puts "unique genres: #{@@genres.uniq}"
    # puts "entire genres array: #{@@genres}"
  end

  def self.artists
    @@artists.uniq
    # puts "unique artists: #{@@artists.uniq}"
    # puts "entire artists array: #{@@artists}"
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre_name|
    #   genre_hash[genre_name] = @@genres.count(genre_name) unless genre_hash.include?(genre_name)
    # end
      if genre_hash == {} || genre_hash[genre_name] == nil
        genre_hash[genre_name] = 1
      elsif genre_hash.include?(genre_name)
        genre_hash[genre_name] += 1
      end
    end
    genre_hash
    # puts "genres histogram: #{genre_hash}"
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist_name|
      artist_hash[artist_name] = @@artists.count(artist_name) unless artist_hash.include?(artist_name)
    end
    artist_hash
    # puts "artists histogram: #{artist_hash}"
  end

end

# lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
#
# Song.count
#   # => 30
# Song.artists
# #   # => ["Jay-Z", "Drake", "Beyonce"]
# Song.genres
# #   # => ["Rap", "Pop"]
# Song.genre_count
# #   # => {"rap" => 5, "rock" => 1, "country" => 3}
# Song.artist_count
# #   #  => {"Beyonce" => 17, "Jay-Z" => 40}

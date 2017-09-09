#Song class tracks the number of songs it creates, shows all the artists of existing songs, shows all the genres of existing songs, keeps track of the number of songs of each genre it creates, reveal the number of songs each artists is responsible for.
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    number_of_genres = {} #keys = names of each genre; values = number of songs in that genre
    @@genres.each do |song_genre|
      if number_of_genres[song_genre] #if hash has a key of a genre, increment value by 1, else, create a new key/value pair.
        number_of_genres[song_genre] += 1
      else
        number_of_genres[song_genre] = 1
      end
    end
    number_of_genres
  end

  def self.artist_count
    number_of_artists = {} #keys = names of each artists; values = number of artists in that artists
    @@artists.each do |artist_name|
      if number_of_artists[artist_name] #if hash has a key of a artist, increment value by 1, else, create a new key/value pair.
        number_of_artists[artist_name] += 1
      else
        number_of_artists[artist_name] = 1
      end
    end
    number_of_artists
  end

end

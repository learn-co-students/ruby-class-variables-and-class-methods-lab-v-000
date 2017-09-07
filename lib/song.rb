#Song class tracks the number of songs it creates, shows all the artists of existing songs, shows all the genres of existing songs, keeps track of the number of songs of each genre it creates, reveal the number of songs each artists is responsible for.
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0 #keeps track of new songs created from Song class
  @@artists = [] #contains all of the artists of exisiting song as was pushed from initialize method
  @@genres = [] #contains all of the genres of exisiting song as was pushed from initialize method
  #@@genre_count = {}
  #@@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    #total number of soungs created
    @@count
  end

  def self.genres
    #returns array of all the genres of exisiting songs; no duplicates
    @@genres.uniq
  end

  def self.artists
    #returns array of all artists of the existing songs; only unique artists, no repeats
    @@artists.uniq
  end

  def self.genre_count
    #returns hash; keys are names of each genre; each genre key point to value that is the number of songs that have that genre (HISTOGRAM)
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] +=1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    #retuns historgram similar to genre_count but for artists
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end

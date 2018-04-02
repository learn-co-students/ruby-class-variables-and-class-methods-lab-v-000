
class Song
  attr_reader :name, :artist, :genre
  attr_writer :name

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def genre= (new_genre)
    # delete 1st occurrence of the current genre from the class genres[]
    @@genres.delete_at(@@genres.index(@genre))
    # change instance variable and update genres[]
    @genre = new_genre
    @@genres << new_genre
  end

  def artist= (new_artist)
    @@artists.delete_at(@@artists.index(@artist))
    @artis = new_artist
    @@artists << new_artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    hash = Hash.new { |hash, genre| hash[genre] = 0 }  # when needed, create new keys with value 0
    @@genres.each do | genre |
      hash[genre] += 1
    end
    hash
  end

  def self.artists
    @@artists.uniq
  end
  def self.artist_count
    hash = Hash.new { |hash, artist| hash[artist] = 0 }
    @@artists.each do | artist |
      hash[artist] += 1
    end
    hash
  end
end

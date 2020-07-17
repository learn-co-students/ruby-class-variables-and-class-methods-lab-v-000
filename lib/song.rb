
class Song
  attr_reader :name, :artist, :genre
  #note: specific writer methods are needed for artist and genre.  This is so
  #      @@genres and @@artists stays in sync with the actual attribute values in instances.
  #      Test spec does not seem to cover this situation but here is example: create song with
  #      genre R&B and so @@genres[ "R&B" ].  Now change that song so genre is "Rap".
  #      If using default genre writer, @@genres will still be R&B, right?  But actually
  #      we want it to be "Rap"
  #      An alternative would be to just keep array of all the Song objects and then
  #      generate genres and artists arrays on demand.
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

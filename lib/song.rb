class Song
  @@count = 0

  def self.count
    @@count
  end

  # Control for duplicates when you code your
  # .genres class method, not when you add
  # genres to the original @@genres array.
  @@genres = []

# this should be deleted at some point
# def self.total_genre_entries
#   @@genres
# end

  def self.genres
    @@genres.uniq
  end

  # this method doesn't display a space between the values & the "=>" symbol...it still passed the Learn.co tests.
  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end

  @@artists = []

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end

  def self.artists
    @@artists.uniq
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  attr_accessor :name, :artist, :genre
end 


def callsong(clas)
  song  = clas.new("aa", "bb", "cc")
  song  = clas.new("aa", "bb", "cc")
  Song.count
  Song.artists
  Song.genres
  Song.genre_count

end
class Song
  attr_accessor  :name, :artist, :genre

  @@artists       =   []
  @@genres        =   []
  @@count         =   0
  @@artist_count  =   {}
  @@genre_count   =   {}

  def initialize(name, artist, genre)
    @name          = name
    @artist        = artist
    @genre         = genre
    @@artists      << artist
    @@genres       << genre
    @@count         += 1
  end
  def self.count
    puts @@count
    @@count
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] == nil
          puts "false"
          @@genre_count[genre] = 1
          puts @@genre_count

      else
        @@genre_count.each do |k, v| if k == genre
          puts k

          puts v
          @@genre_count[k] = v + 1
          puts @@genre_count
                end
              end
      end
    end
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
end

callsong(Song)

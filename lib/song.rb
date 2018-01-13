
def callsong(clas)
###THIS METHOD IS FOR TESTING PURPOSE ONLY
  song  = clas.new("aa", "bb", "cc")
  song  = clas.new("aa", "bb", "cc")
  song  = clas.new("aa", "bb", "cc")
  song  = clas.new("aa", "bb", "cc")
  song  = clas.new("aa", "dd", "cc")
  song  = clas.new("aa", "dd", "cc")
  song  = clas.new("aa", "xx", "cc")
  song  = clas.new("aa", "xx", "cc")








  Song.count
  Song.artists
  Song.artist_a
  Song.artist_a
  Song.genres
  Song.genre_count
  puts "aaaa"
  puts "cccccccccccc"
  Song.artist_count
  puts "bbb"
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
        @@genre_count[genre] = 1
      else
        @@genre_count.each do |cgenre, cgenre_value|
          if cgenre == genre
            @@genre_count[cgenre] = cgenre_value + 1
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

      def self.artist_a
        puts "ddddddddddddddd"
      end

        def self.artist_count
        puts "zzzzzzzzzzzzzzzzz"
        puts @@artists
        puts "in"
        puts "ddddddddddddddd"
          @@artists.each do |artist|
            if @@artist_count[artist] == nil
              @@artist_count[artist] = 1
              puts @@artist_count
              puts "if"
        else
          @@artist_count.each do |cartist, cartist_value|
            puts "else"
            if cartist == artist
              puts cartist
              puts cartist_value
              puts @@artist_count
              @@artist_count[cartist] = cartist_value + 1
              puts @@artist_count
              puts cartist_value
            end
          end
        end
        end
        puts "xxxxxxxxxxxxxxxx"
          @@artist_count
        end

  end
callsong(Song)

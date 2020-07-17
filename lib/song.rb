class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @@artists << artist
    @genre = song_genre
    @@genres << genre
    @@count += 1
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
    ret_hash = {}
    @@genres.each do |type|
      if ret_hash == nil || !(ret_hash.include?(type))
        ret_hash[type] = 1
      else
        ret_hash[type] += 1
      end
    end
    ret_hash
  end

  def self.artist_count
    ret_hash = {}
    @@artists.each do |name|
      if ret_hash == nil || !(ret_hash.include?(name))
        ret_hash[name] = 1
      else
        ret_hash[name] += 1
      end
    end
    ret_hash
  end
end

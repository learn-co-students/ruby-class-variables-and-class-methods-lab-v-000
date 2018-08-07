class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initalize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # def count
  #   @@count
  # end
  #
  # def genres
  #   return @@genres.uniq
  # end
  #
  # def artists
  #   return @@artists.uniq
  # end
  #
  # def genre_count
  #   @@genres.each do |genre|
  #     count = {}
  #     if count.has_key?(genre)
  #       count[genre] += 1
  #     else
  #       count[genre] = 1
  #     end
  #     return count
  #   end
  # end
end

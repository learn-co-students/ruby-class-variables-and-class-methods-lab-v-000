# Song class
# can produce individual songs
# class keeps count of songs created (total and/or in genre_count only?)
# Instance methods w/ attr_accessor
#   name,
#   artist
#   genre.

#  are the below class or instance methods?
#   ? genre_count  -- track num songs of EACH genre
#   ? artist_count -- track num songs of EACH artist

# Class methods
#   song count -- total songs then use to create subcounts by artist & genre
#


class songs
attr_accessor  name:, artist:, genre:

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

end



# end class below
end

class Song
  @@count = 0
  @@artists = []
  @@artist
  @@name
  @@genre
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
   def initialize(name,artist,genre)
     @@count += 1
     @@artist = artist
     @@artists << @@artist
     @@name = name
     @@genre = genre
     @@genres << @@genre
   end

   def artist
     @@artist
   end
   def name
     @@name
   end
   def genre
     @@genre
   end
   def self.count
   @@count
   end
   def self.artists
     @@artists.uniq!
   end
   def self.genres
     @@genres.uniq!
   end


   def self.genre_count
     unique_genres = @@genres.uniq # will assign uniq genres to unique_genres
      i = 0
     while i < unique_genres.length
       count = 0
       j = 0
       while j < @@genres.length
         if (unique_genres[i] == @@genres[j])
           count += 1
         end
         j += 1
       end # end of while with j
       @@genre_count[unique_genres[i]] = count
       i += 1
  end # end of while with i
        @@genre_count
end   # self.genre_count

def self.artist_count
  unique_artist = @@artists.uniq # will assign uniq genres to unique_genres
   i = 0
  while i < unique_artist.length
    count = 0
    j = 0
    while j < @@artists.length
      if (unique_artist[i] == @@artists[j])
        count += 1
      end
      j += 1
    end # end of while with j
    @@artist_count[unique_artist[i]] = count
    i += 1
  end # end of while with i
     @@artist_count
end
end

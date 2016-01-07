class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    # if(exists == false)
    @@genres << genre
    # end

    # exists = false
    # @@artists.each do |art|
    #   if(art == artist)
    #     exists = true
    #   end
    # end

    # if(exists == false)
      @@artists << artist
    # end
  end

  def self.count
    @@count
  end

  def self.genres
    genres = @@genres
    return genres.uniq!
  end

  def self.artists
    arts = []
    @@artists.each do |art|
      repeat = false
      arts.each do |artist_in_arr|
        if(art == artist_in_arr)
          repeat = true
        end
      end
      if(repeat == false)
        arts << art
      end
    end
    return arts
  end

  def self.genre_count
    count ={}
    @@genres.each do |gen|
      if(count[gen] == nil)
        count[gen] = 0
      end
      count[gen] = count[gen] + 1
    end
    return count
  end

  def self.artist_count
    count ={}
    @@artists.each do |art|
      if(count[art] == nil)
        count[art] = 0
      end
      count[art] = count[art] + 1
    end
    return count
  end
end
class Song
   @@count = 0
  attr_accessor :name, :artist, :genre

 


    def initialize(count)
    @@count += 1
  end


   def Song.count     # class method
  end


   def Song.genres     # class method
    @@genres = []
  end

  def Song.artists
    @@artists = 0
  end

  def Song.genre_count
    Song.genre_count => {"rap" => 5, "rock" => 1, "country" => 3}
end
end

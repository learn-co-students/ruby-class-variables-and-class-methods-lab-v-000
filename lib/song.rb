class Song
  attr_accessor :name, :artist, :genre
  @@count =0
  @@genres =[]
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist

    @@count +=1

  end

  def self.count
    @@count
  end

  def self.genres
    genre_list = []

    @@genres.each do |music_type|
      if !genre_list.include?(music_type)
        genre_list << music_type
      end
    end
    genre_list
  end

def self.artists
  artist_list = []

  @@artists.each do |artist_name|
    if !artist_list.include?(artist_name)
      artist_list << artist_name
    end
  end
  artist_list
end

def self.genre_count

  @@genres.each_with_object(Hash.new(0)){|music_type, count| count[music_type] += 1}

end

def self.artist_count
  @@artists.each_with_object(Hash.new(0)) {|artist, song_count| song_count[artist] +=1}
end

end

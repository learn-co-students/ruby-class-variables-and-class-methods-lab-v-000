class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@total_count = {}

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre
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
    counts = Hash.new 0
    @@genres.each do |occurance|
      counts[occurance] += 1
    end
    counts
  end

  def self.artist_count
    counts = Hash.new 0
    @@artists.each do |occurance|
      counts[occurance] += 1
    end
    counts
  end
    
end
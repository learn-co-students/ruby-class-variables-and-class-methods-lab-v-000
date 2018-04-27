require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1 
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
    hash = {}
    @@genres.each do |i|
      if hash.keys.include?(i) == false; 
        hash[i] = 1
          else hash[i]+=1 
        end
      end
    hash
  end
 
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre]
				hash[genre] +=1
			else
				hash[genre] = 1
      end
    end
    hash
  end

	# def self.artist_count 
  #   hash = {}
  #   @@artists.each do |artist|
  #     if hash.keys.include?(artist) == false; 
  #       hash[artist] = 1
  #     else hash[artist]+=1 
  #       end
	# 		end
  #   hash
	# end
	
	def self.artist_count 
		hash = {}
		@@artists.each do |artist|
			if hash[artist]
				hash[artist] +=1
			else
				hash[artist] = 1
			end
		end
		hash
	end
end
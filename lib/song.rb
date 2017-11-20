class Song
  attr_accessor :name, :count, :artists, :genres

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize
   @@count += 1
 end

 def self.count
   @@acount
 end
end

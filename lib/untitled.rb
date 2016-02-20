

def blah
words = ["rap", "pop", "rap"]  
result = Hash.new(0)
words.each { |word| result[word] += 1 }
puts result
end

blah

def sort
  sorted_roster = {}
  @roster.each do |grade, students|
    sorted_roster[grade] = students.sort
  end
  sorted_roster
end 

def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:" #must have assignment variable current_line so there is something to call on
    deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"  
    end
    puts current_line #must call current_line or the original array will return only without the << #{i} and #{person}
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
  end
end
arrays = []
running = true
while running == true
 print "Insert a pair of values(separate by space): "
 values = gets.chomp.split(' ')
 new_array = []
 values.each {  |value| new_array.push(value.to_f) }
 arrays.push new_array
 print "Another pair? (Y/n) "
 answer = gets.chomp
 if answer.include? "n"
   running = false
 end
end

sum = []

arrays.each do |array|
  total = 0
  array.each do |value|
    total += value
  end

  sum.push total
end

p sum.join(' ')

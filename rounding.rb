data = IO.read('rounding_data.txt')
data = data.split("\n")
values  = []
total = []
data.each do |pair|
	new_array = pair.split(" ")
	for i in 0...new_array.size
		new_array[i] = new_array[i].to_f
	end
	values.push(new_array)
end

values.each do |array|
	if array.size == 2
		value = array[0]/array[1]
		total.push(value)
	end
end

for i in 0...total.size
	total[i] = total[i].round
end

p total.join " "

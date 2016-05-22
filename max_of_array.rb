data = IO.read('max_of_array_data.txt')
data = data.split(" ")
for i in 0...data.count
	data[i] = data[i].to_i
end

min = 0
max = 0

data.each do |value|
	if value > max
		max = value
	elsif value < min
		min = value
	end
end

puts "%{max} %{min}" % { max: max, min: min }

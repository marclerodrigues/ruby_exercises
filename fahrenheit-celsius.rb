data = IO.read('fahrenheit-celsius_data.txt')
data = data.split(" ")
for i in 0...data.size
	data[i] = data[i].to_f
end

for i in 1...data.size
	data[i] = ((data[i]- 32) * 5/9).round
end

p data[1..data.size-1].join " "

data = IO.read('median_of_three_data.txt')
data = data.split("\n")
new_data = []
median = []
data.each do |triplets|
	if triplets.size > 2
		new_data.push(triplets.split(" "))
	end
end

new_data.each do |triplet|
	for i in 0...triplet.size
		triplet[i] = triplet[i].to_i
	end
	triplet.sort!
	median.push(triplet[1])
end

p median.join " "

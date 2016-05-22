data = IO.read('vowel_count_data.txt')
data = data.split("\n")
total_count = []

data.each do |line|
	count = line.scan(/[aeiouy]/).count
	total_count.push(count)
end

p total_count[1..total_count.size-1].join " "

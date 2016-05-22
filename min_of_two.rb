data = IO.read("min_of_two_data.txt")
data = data.split("\n")
array = []
min = []
data.each do |pair|
  array.push(pair.split(" "))
end

array.each do |pair|
  for i in 0...pair.count
    pair[i] = pair[i].to_f
  end
end

array.each do |pair|
  if pair.size >= 2
    min.push(pair.min.to_i)
  end
end

p min.join " "

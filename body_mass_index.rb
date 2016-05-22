data = IO.read('body_mass_index_text.txt')
data = data.split("\n")
bmi_data = []
bmi_total = []
data.each do |info|
	array = info.split(" ")
	for i in 0...array.size
		array[i] = array[i].to_f
	end
	bmi_data.push(array)
end

for i in 1...bmi_data.size
	total = bmi_data[i][0]/(bmi_data[i][1]**2)
	if total >= 30
		bmi_total.push("obese")
	elsif total >= 25
		bmi_total.push("over")
	elsif total >= 18.5
		bmi_total.push("normal")
	else
		bmi_total.push("under")
	end
end

p bmi_total.join " "

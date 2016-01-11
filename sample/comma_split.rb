file = File.open("comma.txt")
contents = file.read

$person_array = []

class Person

	def initialize(last_name,first_name,gender,favorite_color,date_of_birth)
		@last_name = last_name
		@first_name = first_name
		@gender = gender	
		@favorite_color = favorite_color
		@date_of_birth = date_of_birth
	end

end

def CommaSplit(string)

	line = string.split("\n")
	# Removes the new lines

	line.each do |line|
		new_line = line.split(", ")
		# Removes commas put each word into a seprate entry in the array

		$person_array << Person.new(new_line[0], new_line[1], new_line[2], new_line[3], new_line[4])
	end
end

CommaSplit(contents)
puts "Here's your array"
p $person_array
secret_number = rand(1..100)
puts secret_number

counter = 1
chances = 6
guesses = []

while counter <= chances 
	puts 'Choose a number between 1 to 100'
	answer = gets.to_i
	puts answer

	if answer > secret_number
		puts "TOO HIGH again"
	elsif answer < secret_number
		puts "TOO LOW again"
	else 
		break puts "Your number is correct"
	end

	guesses << answer
	puts "guesses: #{answer}"
	
	counter += 1
end
scoring_card = {}

loop do
	puts "Hello, what's your name?"
	player_name = gets.chomp
	puts "hi #{player_name}"

	secret_number = rand(1..100)
	puts secret_number

	counter = 1
	chances = 6
	guesses = []

	while tries <= chances 
		puts 'Choose a number between 1 to 100'
		answer = gets.to_i
		puts "Your guesses: #{answer}"
		guesses << answer
		print guesses

		if answer > secret_number
			puts "TOO HIGH again"
		elsif answer < secret_number
			puts "TOO LOW again"
		else 
			break puts "Your number is correct"
		end
		counter += 1
	end

	puts "STANDINGS"
	scoring_card [player_name] = counter
	scoring_card.sort_by {|player,score| score}.each do |player, score|
		puts "#{player}: #{score}"
	end

	puts 'Do you want to play again?'
	puts 'Y - Yes'
	puts 'N - No'

	play = gets.chomp.downcase
	break if play != 'y'
end
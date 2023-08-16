@scoring_card = {}

def level_stage
	puts "Choose the level you want to challenge."
	puts "Easy . Medium . Hard"
	@level = gets.chomp
end

def set_default(num)
	@secret_number = rand(1..num)
	puts @secret_number
	@counter = 1
	@chances = 6
	@guesses = []
end

def get_name
	puts "Hello, what's your name?"
	@player_name = gets.chomp
	puts "hi #{@player_name}"
end

def guess_game
	while @counter <= @chances 
		puts 'Choose a number between 1 to 50'
		@answer = gets.to_i
		puts "Your guesses: #{@guesses << @answer}"

		if @answer > @secret_number
			puts "TOO HIGH, please try again"
		elsif @answer < @secret_number
			puts "TOO LOW, please try again"
		else 
			break puts "Your number is correct"
		end
		@counter += 1
	end
end

def leaderboard_up
	puts "STANDINGS"
	@scoring_card [@player_name] = @counter
	@scoring_card.sort_by {|player,score| score}.each do |player, score|
		puts "#{player}: #{score}"
	end
end

def restart_game
	puts 'Do you want to play again?'
	puts 'Y - Yes'
	puts 'N - No'

	@play = gets.chomp.downcase
end

def run_game
	loop do
	level_stage
	set_default(50)
	get_name
	guess_game
	leaderboard_up
	restart_game
	break if @play != 'y'
	end
end

run_game
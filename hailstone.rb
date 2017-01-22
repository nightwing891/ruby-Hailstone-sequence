@n = 0;
@count = 0;
@arr = [];
@iterations = 1;

def main
	puts "Please input a positive integer, all other integer will be turned into positive integers: "
	@n = (gets.strip.to_i).abs
	puts "You entered #{@n}"

	puts "How many times do you want to iterate?"
	@iterations = (gets.strip.to_i).abs

	puts "Here are the next numbers in the sequence for the next #{@iterations} times: "
	while @count < @iterations
		if @n %2 == 0 
			@n = @n / 2
			@arr << @n
			@count += 1
		else
			@n = @n * 3 + 1
			@arr << @n
			@count += 1
		end
	end
	puts "#{@arr.join(", ")}"

	again
end

def again
	puts "do you want to go again? (y/n)"
	answer = gets.strip.to_s.downcase
	if answer == 'y'
		@n = 0;
		@count = 0;
		@arr = [];
		@iterations = 1;
		main
	elsif answer == 'n'
		exit(0)
	else 
		puts "I'm sorry I didn't quite get that"
		again
	end
end

main


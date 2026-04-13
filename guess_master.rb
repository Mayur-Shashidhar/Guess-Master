best_score = 0

loop do
  puts "\n🎯 Number Guessing Game"
  puts "Select Difficulty:"
  puts "1. Easy (1-50, 7 attempts, 1 hint)"
  puts "2. Medium (1-100, 5 attempts, 2 hints)"
  puts "3. Hard (1-200, 3 attempts, 3 hints)"

  difficulty = nil

  loop do
    print "Enter choice (1-3): "
    difficulty = gets.chomp
    break if ["1", "2", "3"].include?(difficulty)
    puts "Invalid choice. Try again."
  end

  case difficulty
  when "1"
    max = 50
    attempts = 7
    hints_left = 1
  when "2"
    max = 100
    attempts = 5
    hints_left = 2
  when "3"
    max = 200
    attempts = 3
    hints_left = 3
  end

  number = rand(1..max)
  guesses = []

  puts "\nGuess the number between 1 and #{max}"
  puts "You have #{attempts} attempts"
  puts "Hints available: #{hints_left}"
  puts "Type 'hint' to use a hint"

  while attempts > 0
    print "\nEnter your guess: "
    input = gets.chomp.downcase

    # hint system
    if input == "hint"
      if hints_left == 0
        puts "⚠️ No hints left!"
        next
      end

      hints_left -= 1
      hint_type = rand(1..5)

      case hint_type
      when 1
        puts "💡 Hint: The number is #{number.even? ? 'EVEN' : 'ODD'}"

      when 2
        low = [number - 10, 1].max
        high = [number + 10, max].min
        puts "💡 Hint: The number is between #{low} and #{high}"

      when 3
        puts "💡 Hint: Last digit is #{number % 10}"

      when 4
        puts "💡 Hint: Number is #{number > max/2 ? 'greater' : 'less'} than #{max/2}"

      when 5
        puts "💡 Hint: Number #{number % 5 == 0 ? 'is' : 'is not'} multiple of 5"
      end

      puts "Hints left: #{hints_left}"
      next
    end

    # input validation
    unless input.match?(/^\d+$/)
      puts "⚠️ Please enter a valid number"
      next
    end

    guess = input.to_i

    # duplicate guess check
    if guesses.include?(guess)
      puts "⚠️ You already guessed that number!"
      next
    end

    guesses << guess

    difference = (guess - number).abs

    if guess == number
      score = attempts * 10
      puts "✅ Correct! You guessed the number."
      puts "🏆 Score: #{score}"

      if score > best_score
        best_score = score
        puts "🔥 New High Score!"
      end

      puts "🥇 Best Score: #{best_score}"
      break

    elsif guess > number
      puts "📉 Too high"
    else
      puts "📈 Too low"
    end

    # warm / cold hints
    if difference <= 5
      puts "🔥 Very close!"
    elsif difference <= 10
      puts "🌡️ Warm"
    else
      puts "🧊 Cold"
    end

    # guess history
    puts "📜 Previous guesses: #{guesses.join(', ')}"

    attempts -= 1
    puts "Attempts left: #{attempts}" if attempts > 0
  end

  if attempts == 0
    puts "\n❌ Game Over!"
    puts "The number was: #{number}"
  end

  print "\nPlay again? (y/n): "
  again = gets.chomp.downcase
  break unless again == "y"
end

puts "\nThanks for playing!"
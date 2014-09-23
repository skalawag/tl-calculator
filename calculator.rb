help =
  "A simple calculator that performs addition, subtraction, multiplication,\n" +
  "or division. Enter your numbers at the prompt and receive the answer.\n" +
  "Note that you may want to enter decimal numbers in some cases.\n\n\n"

puts help

def int_or_float(i)
  if i =~ /\d+\.\d+/
    i.to_f
  else
    i.to_i
  end
end

while true
  puts "Enter a integer or decimal number:"
  num1 = int_or_float(gets.chomp)

  puts "Enter an integer or decimal number:"
  num2 = int_or_float(gets.chomp)

  puts "Which operation would you like to perfom?"
  puts "  1. Addition"
  puts "  2. Subtraction"
  puts "  3. Division"
  puts "  4. Multiplication"
  puts "-----------------------------------------"

  op = gets.chomp.to_i

  if op < 1 or op > 4
    puts "That operation is unknown. Try again? (y/n)"
    ans = gets.chomp
    if ans = 'y'
      next
    else
      break
    end
  else
    case
    when op == 1
      puts "The sum of #{num1} and #{num2} is #{num1 + num2}"
    when op == 2
      puts "The difference of #{num1} and #{num2} is #{num1 - num2}"
    when op == 3
      puts "The quotient of #{num1} and #{num2} is #{num1 / num2}"
    when op == 4
      puts "The product of #{num1} and #{num2} is #{num1 * num2}"
    end
  end

  puts ""
  puts "Would you like another calculation? (y/n)"
  again = gets.chomp
  if again == 'y'
    next
  else
    break
  end
end

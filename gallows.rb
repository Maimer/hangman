def print_gallows(chances_left, chances_total)
  if chances_left == chances_total
  puts "     ________
     |      |
            |
            |
            |
    ________|
    | |   | |
    |     |"

  elsif chances_left >= chances_total * 4 / 5
    puts "     ________
     |      |
     O      |
            |
            |
    ________|
    | |   | |
    |     |"

  elsif chances_left >= chances_total * 3 / 5
    puts "     ________
     |      |
     O      |
    \\       |
            |
    ________|
    | |   | |
    |     |"

  elsif chances_left >= chances_total * 2 / 5
    puts "     ________
     |      |
     O      |
    \\/      |
            |
    ________|
    | |   | |
    |     |"


  elsif chances_left == 0
    puts "     ________
     |      |
     O      |
     \\/     |
     /\\     |
    ________|
    | |   | |
    |     |"

  else
    puts "     ________
     |      |
     O      |
     \\/     |
     /      |
    ________|
    | |   | |
    |     |"
  end
end

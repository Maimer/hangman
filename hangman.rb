#!/usr/bin/env ruby

puts "Welcome to Hangman!\n\n"

word_bank = %w[launch academy ruby chinatown boston program apollo]
hidden = word_bank.sample
chances = hidden.length + 2
guessed_letters = []
player_word = "_" * hidden.length

def word_check(word, hidden)
  if word == hidden
    puts "Congratulations, you've guessed the word!"
  else
    puts "Sorry, that word was not correct.  Better luck next time!"
  end
end

def update_word(letter, hidden, player_word)
  count = 0
  letter_count = 0
  hidden.length.times do
    if hidden[count] == letter
      player_word[count] = letter
      letter_count += 1
    end
    count += 1
  end
  puts "Found #{letter_count} occurrence(s) of the character #{letter}.\n\n"
end

def duplicate_guess(letter, array_of_letters)
  array_of_letters.each do |value|
    if letter == value
      return true
    end
  end
  return false
end

while player_word != hidden
  puts "Word: #{player_word}"
  puts "Chances Remaining: #{chances}"
  print "Guess a single letter (a-z) or the entire word: "
  guess = gets.chomp
  puts

  if guess.length > 1
    word_check(guess, hidden)
    break
  else
    if duplicate_guess(guess, guessed_letters)
      puts "You already guessed #{guess}!\n\n"
    else
      if hidden.include?(guess)
        update_word(guess, hidden, player_word)
        if player_word == hidden
          word_check(player_word, hidden)
        end
      else
        puts "Sorry, no #{guess}'s found.\n\n"
        chances -= 1
        if chances == 0
          puts "You're out of chances, better luck next time..."
        end
      end
    end
    guessed_letters << guess
  end
end


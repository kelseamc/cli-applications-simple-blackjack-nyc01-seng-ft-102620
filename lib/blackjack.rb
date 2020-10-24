def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  total = card_1 + card_2
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input ==  "s"
    return total
  elsif input == "h"
    x = deal_card
    total = (x + total)
    return total
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_total = initial_round
  total = hit?(first_total)
  display_card_total(total)
  until total > 21 do
    hit?(total)
  end
  end_game(total)
end
  

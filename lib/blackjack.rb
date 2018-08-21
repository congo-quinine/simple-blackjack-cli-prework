def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total2 = deal_card
  sum = total + total2
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  what = get_user_input
  if what == "h"
  card_total += deal_card
elsif what != 's' || what != 'h'
  invalid_command
  prompt_user
  else
  "Good luck"
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

end

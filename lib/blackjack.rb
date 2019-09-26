def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1...11)
  random
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game (number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_total += deal_card
  elsif input == "s" 
    current_total
  else 
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  #if hit?
  #end
end
    

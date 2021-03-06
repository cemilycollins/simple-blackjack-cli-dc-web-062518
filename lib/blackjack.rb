def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round_total = deal_card + deal_card
  display_card_total(first_round_total)
  return first_round_total
end

def hit?(total)
  prompt_user
  var_user_input = get_user_input
    if var_user_input == "h"
      total = total + deal_card
    elsif var_user_input == "s"
      total = total
    else
      invalid_command
    end
  return total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end

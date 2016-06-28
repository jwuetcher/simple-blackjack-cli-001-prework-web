  def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total (cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  # code #get_user_input here
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
  # code #end_game here
end

def initial_round 
  cardA = deal_card
  cardB = deal_card
  cardtotal = cardA + cardB
  display_card_total (cardtotal)
  return cardtotal
    # code #initial_round here
end

def hit?(cardtotal)
  prompt_user
  answer = get_user_input
  if answer == "h"
    newcard = deal_card
    cardtotal += newcard
    return cardtotal
  elsif answer == "s"
    return cardtotal
  else
    invalid_command
    prompt_user
    return cardtotal      
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
cardtotal = initial_round
  until cardtotal > 21
    cardtotal = hit? (cardtotal)
    display_card_total(cardtotal)
  end
  end_game(cardtotal)
end
    

# PHASE 2
def convert_to_int(str)
  begin
  Integer(str)
  rescue 
    str
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class WrongFruitError < StandardError

  def message
    "This is not a fruit. I'm not talking to you anymore :("
  end
end

class CoffeeException < StandardError
  def message
    "Thank you for the coffee! You can try again!"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
    
  elsif maybe_fruit == "coffee"
    raise CoffeeException
  else 
    raise WrongFruitError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
  rescue CoffeeException => e
    puts e.message
  retry
  rescue WrongFruitError => e
    puts e.message
  end 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "So you are not going to tell me your name!" if name == ""
    raise "You never hit me up for plans we're not besties!" if fav_pastime == ""
    raise "Less than 5 years, we aren't besties yet!" if yrs_known < 5 
  
    @name = name
    @yrs_known = yrs_known.to_i
    @fav_pastime = fav_pastime
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end



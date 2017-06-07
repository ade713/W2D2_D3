PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError
  puts "Need correct string for conversion e.g. '123'"
  return nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  raise StandardError unless FRUITS.include? maybe_fruit
  puts "OMG, thanks so much for the #{maybe_fruit}!"
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue StandardError
    puts "You didn't give me a good fruit..."
    retry if maybe_fruit == 'coffee'
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
      raise StandardError if yrs_known < 5
      raise StandardError if name.length < 1
      raise StandardError if fav_pastime.length < 1
    rescue StandardError => e
      puts e.message
      if yrs_known < 5
        puts "A great friendships is at least 5 years!"
        puts "How long have you known #{name}?"
        yrs_known = gets.chomp.to_i
        retry if yrs_known < 5
      elsif name.length < 1
        puts "You didn't enter your best friend's name"
        name = gets.chomp
        retry if name.length < 1
      elsif fav_pastime.length < 1
        puts "What does he like to do?"
        fav_pastime = gets.chomp
        retry if fav_pastime.length < 1
      end
    end

    @name = name
    @yrs_known = yrs_known
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

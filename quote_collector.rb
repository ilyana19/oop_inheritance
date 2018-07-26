require_relative 'multilinguist'

class QuoteCollector < Multilinguist
  def initialize
    @quotes = [] # => initialize an empty array
  end

  def add(str)
    @quotes << str
  end

  def all
    return @quotes
  end

  def random
    quote = @quotes.sample
    self.say_in_local_language(quote)
  end

  def translate(index)
    # pulls out the value of the array based on index
    puts "Faye Phlorik: #{@quotes[index]}"
    puts "Faye Phlorik: #{self.say_in_local_language(@quotes[index])}"
  end
end

fayes_quotes = QuoteCollector.new
fayes_quotes.add("A great day to make a fortune, is it not? Let us make ourselves known.")
fayes_quotes.add("It seems that we're hungry. I propose a plan: why don't you go find the money and I'll order the food.")
fayes_quotes.add("May your dreams be entirely dedicated to me.")
fayes_quotes.add("Get to it. I'll be supervising.")
fayes_quotes.add("I don't care if you want a break or not, but I certainly do.")
fayes_quotes.add("A word of warning, you'd better quit now if you don't wanna get hurt, and if it happens I ain't helping you.")
fayes_quotes.add("Now that's what I'd call magnificent. Bet you Lucas/Isaac can't do better.")

p fayes_quotes.all
puts ""

puts "Show randomly translated quote from list:"
fayes_quotes.travel_to("France")
p fayes_quotes.random
puts ""

fayes_quotes.travel_to("Germany")
fayes_quotes.translate(0)
puts ""

fayes_quotes.travel_to("Japan")
fayes_quotes.translate(3)
puts ""
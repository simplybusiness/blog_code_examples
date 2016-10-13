# File: application-2/addition.rb
#
puts 'Parsing addition.rb'

class Addition
  def initialize(a, b)
    @a, @b = a, b
  end

  def do
    @a + @b
  end
end

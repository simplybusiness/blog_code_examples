# File: application-2/multiplication.rb
#
puts 'Parsing multiplication.rb'

class Multiplication
  C = 5

  def initialize(a, b)
    @a, @b = a, b
  end

  def do
    @a * @b + C
  end
end

puts self.class
puts Object.constants.inspect
puts "Is C inside Object constants? #{Object.constants.include?(:C)}"
C = 1
puts Object.constants.inspect
puts "Is C inside Object constants? #{Object.constants.include?(:C)}"


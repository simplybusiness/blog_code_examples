# File: check_for_constant_definition
#
C = 1
puts "Is C defined? #{Object.const_defined?(:C)}"
puts "Is D defined? #{Object.const_defined?(:D)}"

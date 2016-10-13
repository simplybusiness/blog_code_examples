# File: removing_constant.rb
#
C = 1
puts "Is const defined? #{Object.const_defined?(:C)}"
Object.send :remove_const, :C
puts "Is const defined? #{Object.const_defined?(:C)}"

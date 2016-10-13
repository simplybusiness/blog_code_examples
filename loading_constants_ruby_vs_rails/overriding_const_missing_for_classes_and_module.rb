# File: overriding_const_missing_for_classes_and_module
#
class Class
  def const_missing(const_name)
    puts "Constant missing in class nesting point: #{const_name}!"
  end
end

class Module
  def const_missing(const_name)
    puts "Constant missing in module nesting point: #{const_name}!"
  end
end

class MyClass
  B
end

module MyModule
  C
end

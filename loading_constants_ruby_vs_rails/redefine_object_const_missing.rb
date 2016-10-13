# File: redefine_object_const_missing
#
class Object
  def self.const_missing(const_name)
    raise NameError, "Oooooops! #{const_name} is missing!"
  end
end

C

class Dog
  attr_accessor :eat, :bark

  def initialize(eat, bark)
    @eat = eat
    @bark = bark

  end


end

dog = Dog.new("bones", "woof")

puts dog.eat
puts dog.bark
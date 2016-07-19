class Duck
  def initialize(name)
    @name = name
  end

  def eat
    p "Duck #{@name} is eating."
  end

  def speak
    p "Duck #{@name} says Quack!"
  end

  def sleep
    p "Duck #{@name} sleeps quietly"
  end
end

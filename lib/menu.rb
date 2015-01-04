class Menu

  attr_reader :dishes
  def initialize(options = {})
    @dishes = options.fetch('dishes') {self.default}
  end

  def add index, name, price
    @dishes = {index => [name, price]}
  end

  def delete index
    @dishes.delete(index)
  end

  def print
    w = 18
    @dishes.map do |i, v|
      beginning = "#{i}. #{v[0]}"
      ending = "#{format("%.2f", v[1]/100)}"
      puts beginning.ljust(w) + ending.rjust(w)
    end
    puts '===================================='
  end

  def default
    {
      1 => ['Mushroom', 300],
      2 => ['Potato', 200],
      3 => ['Sushi', 500]
    }
  end

end
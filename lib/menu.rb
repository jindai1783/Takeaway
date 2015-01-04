class Menu

  attr_reader :dishes
  def initialize
    @dishes = {}
  end

  def add index, name, price
    @dishes = {index => [name, price]}
  end

  def delete index
    @dishes.delete(index)
  end

  def print
    width = 18
    @dishes.map do |i, v|
      beginning = "#{i}. #{v[0]}"
      ending = "#{format("%.2f", v[1]/100)}"
      puts beginning + ending.rjust(width)
    end
  end

end
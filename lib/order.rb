require 'menu.rb'

class Order

  attr_reader :basket
  def initialize menu
    @basket = {}
    @menu = menu
  end

  def ask
    puts '1. View menu'
    puts '2. Add a dish'
    puts '3. Delete a dish'
    puts 'Please enter an action'
  end

  def view_menu
    @menu.print
  end

  def add(options = {})
    puts 'Please enter the dish number'
    n = options.fetch('number') {gets}
    puts 'Please enter the quantity'
    q = options.fetch('quantity') {gets}
    @basket = {n => q}
  end

  def delete(options = {})
    puts 'Please enter the dish number'
    n = options.fetch('number') {gets}
    @basket.delete(n)
  end

  def checkout(options = {})
    puts 'Please enter the total sum'
    s = options.fetch('sum') {gets}
    sum = @basket.inject(0) do |sum, (n, q)|
      sum + @menu.dishes[n][1] * q
    end
    if s == sum
      true
    else
      puts 'Wrong sum, please checkout again'
    end
  end
end
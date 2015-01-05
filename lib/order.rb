require_relative 'menu.rb'
require_relative 'text.rb'

class Order

  attr_reader :basket, :menu
  def initialize(options = {})
    @basket = {}
    @menu = options.fetch('menu') {Menu.new}
  end

  def ask
    puts '1. View menu'
    puts '2. Add a dish'
    puts '3. Delete a dish'
    puts '4. Checkout'
    puts 'Please enter an action'
  end

  def view_menu
    @menu.print
  end

  def add(options = {})
    puts 'Please enter the dish number'
    n = options.fetch('number') {gets.chomp.to_i}
    puts 'Please enter the quantity'
    q = options.fetch('quantity') {gets.chomp.to_i}
    @basket = {n => q}
  end

  def delete(options = {})
    puts 'Please enter the dish number'
    n = options.fetch('number') {gets.chomp.to_i}
    @basket.delete(n)
  end

  def checkout(options = {})
    puts 'Please enter the total sum in penny'
    s = options.fetch('sum') {gets.chomp.to_i}
    sum = @basket.inject(0) do |sum, (n, q)|
      sum + @menu.dishes[n][1] * q
    end
    if s == sum
      true
    else
      puts 'Wrong sum, please checkout again'
    end
  end

  def confirm
    text = Text.new
    text.send_confirmation
  end

  def go
    while true
      self.ask
      r = gets.chomp.to_i
      if r == 1
        self.view_menu
      elsif r == 2
        self.add
      elsif r == 3
        self.delete
      elsif r == 4
        self.checkout
        break
      else
        puts "Please enter 1 - 4:"
      end
    end
    self.confirm
    puts 'Thank you for your order, bye.'
  end

end
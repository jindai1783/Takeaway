require_relative 'menu.rb'

class Order

  attr_reader :order
  def initialize
    @order = Hash.new
  end

  def print_menu
    menu = Menu.new
    puts menu.menu
  end

  def dish_order
    puts 'Please enter the index of the dish'
    i = gets
    puts 'Please enter the quantity'
    q = gets
    @order[i] = q
  end

  def total_order
    number = 2
    # number = gets.chomp.to_i
    number.times {dish_order}
  end

  def print_order
    puts @order
  end
end
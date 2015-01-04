require 'order.rb'
require 'menu.rb'

describe 'Integrated' do 

  dishes = {
    1 => ['Mushroom', 300],
    2 => ['Potato', 200],
    3 => ['Sushi', 500]
  }

  let(:menu) {Menu.new(:dishes => dishes)}
  let(:order) {Order.new menu}

  it 'should print menu within order' do
    order.view_menu
    expect{order.view_menu}.to output().to_stdout
  end

  it 'shall proceed checkout if sum entered correctly' do
    order.add({'number' => 1, 'quantity' => 1})
    expect(order.checkout('sum' => 300)).to eq true
  end

end
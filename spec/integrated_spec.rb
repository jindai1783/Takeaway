require 'order.rb'
require 'menu.rb'

describe 'Integrated' do 

  let(:menu) {Menu.new}
  let(:order) {Order.new}

  it 'should print menu within order' do
    order.view_menu
    expect{order.view_menu}.to output().to_stdout
  end

  it 'shall proceed checkout if sum entered correctly' do
    order.add({'number' => 1, 'quantity' => 1})
    expect(order.checkout('sum' => 300)).to eq true
  end

end
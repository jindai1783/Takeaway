require 'order.rb'

describe Order do 

  let(:menu) {double :menu}
  let(:order) {Order.new('menu' => menu)}

  it 'should ask for action' do
    expect{order.ask}.to output().to_stdout
  end

  it 'should add a dish with its quantity' do
    order.add({'number' => 1, 'quantity' => 1})
    expect(order.basket.size).to eq 1
  end

  it 'should delete a dish with its quantity' do
    order.add({'number' => 1, 'quantity' => 1})
    order.delete('number' => 1)
    expect(order.basket.size).to eq 0
  end

end
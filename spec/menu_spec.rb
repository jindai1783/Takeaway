require 'menu.rb'

describe Menu do 

  let(:menu) {Menu.new}

  it 'should add a dish' do
    menu.add(1, 'Peking Duck', 800)
    expect(menu.dishes.size).to eq 1
  end

  it 'should delete a dish' do
    menu.add(1, 'Peking Duck', 800)
    menu.delete(1)
    expect(menu.dishes.size).to eq 0
  end

  it 'should print the menu' do
    menu.add(1, 'Peking Duck', 800)
    line = "1. Peking Duck                  8.00\n"
    expect{menu.print}.to output(line).to_stdout
  end

end
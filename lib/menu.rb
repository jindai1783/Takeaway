class Menu

  attr_reader :menu
  def initialize
    @menu = {
      "0. Mushroom" => 3,
      "1. Duck" => 5,
      "2. Chicken" => 10,
    }
  end

end
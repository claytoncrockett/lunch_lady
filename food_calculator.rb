

class FoodCalculator
  attr_accessor :main, :side1, :side2


  def calculate_price_maindish(main)
    case main
    when 1
      @price = 15.35
    when 2
      @price = 9.25
    when 3
      @price = 12.45
    when 4
      @price = 7.45
    else 
      @price = 0.00
    end

  end

  def calculate_price_side(side)
    case side
    when 1
      @price = 3.25
    when 2
      @price = 1.20
    when 3
      @price = 2.25
    when 4
      @price = 4.25
    when 5
      @price = 3.20
    else
      @price = 0.00
    end
  end



end
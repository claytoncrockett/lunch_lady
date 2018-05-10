require_relative 'food_calculator'
require 'pry'


class LunchLady


  @lunch_item = ''
  @current_lunch = ''
  def initialize
    select_main_dish
  end

  def select_main_dish
    puts "For today's lunch you will have the option to pick a main dish, and two side dishes"
    puts "Please choose from the following main dishes:"
    puts "1)Lasagna"
    puts "2)Cheeseburger"
    puts "3)Pizza"
    puts "4)Tacos"
    main_dish = gets.to_i
    case main_dish
    when 1
      @lunch_item = "Lasagna "
    when 2
      @lunch_item = "Cheeseburger "
    when 3
      @lunch_item = "Pizza "
    when 4
      @lunch_item = "Tacos "
    end
    @current_lunch = "Your main dish is #{@lunch_item}"
    puts @current_lunch
    select_side_dish(main_dish)
  end

  def select_side_dish(main_dish)
    puts "You can also pick two side dishes from the following options"
    puts "1)Fries"
    puts "2)Chips"
    puts "3)Fruit"
    puts "4)Salad"
    puts "5)Soup"
 
 
    side1 = gets.to_i
    case side1
    when 1
      @side_item1 = "Fries "
    when 2
      @side_item1 = "Chips "
    when 3
      @side_item1 = "Fruit "
    when 4
      @side_item1 = "Salad "
    when 5
      @side_item1 = "Soup "
    end

    puts "Pick one more side"

    side2 = gets.to_i
    case side2
    when 1
      @side_item2 = "Fries "
    when 2
      @side_item2 = "Chips "
    when 3
      @side_item2 = "Fruit "
    when 4
      @side_item2 = "Salad "
    when 5
      @side_item2 = "Soup "
    end

    @current_lunch += "\nYour two sides are #{@side_item1} and #{@side_item2}"
    puts @current_lunch


    calculate_totals(main_dish, side1, side2)
  end

  def calculate_totals(main, side1, side2)
  
    new_order = FoodCalculator.new
    @total = 0.00
    main_dish_price = new_order.calculate_price_maindish(main)
    @total += main_dish_price
    side1_price = new_order.calculate_price_side(side1)
    @total += side1_price
    side2_price = new_order.calculate_price_side(side2)
    @total += side2_price

    puts "You have selected:\n#{@lunch_item}: $#{main_dish_price}\n#{@side_item1}: $#{side1_price}\n#{@side_item2}: $#{side2_price}"
    puts "Your total is $#{@total}"
  end

end

lunch_lady_helga = LunchLady.new
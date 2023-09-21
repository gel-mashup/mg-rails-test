class BasketCaseController < ApplicationController
  before_action :set_fruits
  before_action :set_items, only: [:index]
  before_action :retreive_items, only: [:order_by_fruit, :order_by_amount]

  def index;
    puts "INDEX ACTION TRIGGERED"
  end

  def order_by_fruit
    @list_items = session[:list_items].to_h
    if(@list_items.keys.first > @list_items.keys.last)
      @list_items = @list_items.sort
    else
      @list_items = @list_items.sort.reverse
    end
    session[:list_items] = @list_items.to_h
    render 'basket_case/index'
  end

  def order_by_amount
    # code here
    @list_items = session[:list_items].to_h
    # debugger
    if(@list_items.values.first > @list_items.values.last)
      @list_items = @list_items.sort_by(&:last).to_h
    else
      @list_items = @list_items.sort_by(&:last).reverse.to_h
    end
    session[:list_items] = @list_items.to_h
    render 'basket_case/index'
  end

  private
    def set_fruits
      @fruits = {
        oranges: 5,
        apples: 9,
        grapes: 3,
        watermelons: 2
      }
    end

    def set_items
      puts "SET ITEMS TRIGGERED"
      @list_items = @fruits
      session[:list_items] = @fruits
    end

    def retreive_items
      puts "RETRIEVE ITEMS TRIGGERED"
      @list_items = session[:list_items]
    end
end


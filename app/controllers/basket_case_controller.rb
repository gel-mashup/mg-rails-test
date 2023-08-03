class BasketCaseController < ApplicationController
  before_action :set_fruits
  before_action :set_items

  def index; end

  def order_by_fruit
    @list_items = @list_items.sort
    @list_items = @list_items.reverse
    render 'basket_case/index'
  end

  def order_by_amount
    # code here

    render 'basket_case/index'
  end

  private
    def set_fruits
      @fruits = {
        oranges: 5,
        apples: 9,
        grapes: 3,
        watermelons: 2,
        guavas: 4
      }
    end

    def set_items
      @list_items = @fruits
    end
end

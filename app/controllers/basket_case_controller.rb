class BasketCaseController < ApplicationController
  before_action :set_fruits
  before_action :set_items
  before_action :build_def_order_param

  def index; end

  def order_by_fruit
    @list_items = @list_items.sort
    @list_items = @list_items.reverse if params.has_key?(:order) && params[:order] == "desc"
    render 'basket_case/index'
  end

  def order_by_amount
    @list_items = @list_items.sort_by(&:last)
    @list_items = @list_items.reverse if params.has_key?(:order) && params[:order] == "desc"

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

    def build_def_order_param
      @order = params[:order] == "asc" ? "desc" : "asc"
    end
end

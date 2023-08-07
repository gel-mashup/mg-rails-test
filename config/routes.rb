Rails.application.routes.draw do
  get 'basket_case/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "basket_case#index"

  get 'basket_case/order_by_fruit'
  get 'basket_case/order_by_amount'
end

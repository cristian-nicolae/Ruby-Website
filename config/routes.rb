Rails.application.routes.draw do
  resources :watches
  resources :laptops
  resources :smartphones
  resources :instruments
  resources :store
  devise_for :users, controllers: {
  	registrations: 'registrations'
  }
  get "/instrument_brand_ibanez", to: "instruments#instrument_brand_ibanez", as: "instrument_brand_ibanez"
  get "/instrument_brand_gibson", to: "instruments#instrument_brand_gibson", as: "instrument_brand_gibson"
  get "/instrument_brand_epiphone", to: "instruments#instrument_brand_epiphone", as: "instrument_brand_epiphone"
  get "/instrument_brand_dean", to: "instruments#instrument_brand_dean", as: "instrument_brand_dean"
  get "/instrument_brand_fender", to: "instruments#instrument_brand_fender", as: "instrument_brand_fender"


  get "/instrument_price_0_1000", to: "instruments#instrument_price_0_1000", as: "instrument_price_0_1000"
  get "/instrument_price_1000_2000", to: "instruments#instrument_price_1000_2000", as: "instrument_price_1000_2000"
  get "/instrument_price_2000_3000", to: "instruments#instrument_price_2000_3000", as: "instrument_price_2000_3000"





  get "/smartphone_brand_huawei", to: "smartphones#smartphone_brand_huawei", as: "smartphone_brand_huawei"
  get "/smartphone_brand_apple", to: "smartphones#smartphone_brand_apple", as: "smartphone_brand_apple"
  get "/smartphone_brand_samsung", to: "smartphones#smartphone_brand_samsung", as: "smartphone_brand_samsung"
  get "/smartphone_brand_oppo", to: "smartphones#smartphone_brand_oppo", as: "smartphone_brand_oppo"
  get "/smartphone_brand_xiaomi", to: "smartphones#smartphone_brand_xiaomi", as: "smartphone_brand_xiaomi"


  get "/smartphone_price_0_250", to: "smartphones#smartphone_price_0_250", as: "smartphone_price_0_250"
  get "/smartphone_price_250_500", to: "smartphones#smartphone_price_250_500", as: "smartphone_price_250_500"
  get "/smartphone_price_500_1000", to: "smartphones#smartphone_price_500_1000", as: "smartphone_price_500_1000"


  root 'store#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

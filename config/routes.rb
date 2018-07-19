Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/menu' => 'mobile#menu'
    get '/rtc' => 'rtc#menu'
    post '/menu' => 'mobile#menu', as: :post_mobile_card
    post '/rtc' => 'rtc#menu', as: :post_card
end

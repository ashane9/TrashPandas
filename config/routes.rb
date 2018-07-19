Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/menu' => 'mobile#menu'
    get '/rtc' => 'rtc#menu'
    get '/mobile/:number' => 'mobile#card_details', as: :mobile_card
    get '/rtc/:number' => 'rtc#card_details', as: :card
    post '/menu' => 'mobile#menu', as: :post_mobile_card
    post '/rtc' => 'rtc#menu', as: :post_card
    patch '/mobile/:number' => 'mobile#update', as: :patch_mobile_card
    patch '/rtc/:number' => 'rtc#update', as: :patch_card
end

Rails.application.routes.draw do
    get "top" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get "about" => "home#about"
end

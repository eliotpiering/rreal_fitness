Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: "application#home"

  get "/about", to: "application#about"
  get "/services", to: "application#services"
  get "/services_alt", to: "application#services_alt"
  get "/free_evalutaion", to: "application#evaluation"
end

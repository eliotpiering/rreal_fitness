Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: "application#home"

  get "/about", to: "application#about"
  get "/contact", to: "application#contact"
  get "/services", to: "application#services"
  get "/services_alt", to: "application#services_alt"
  get "/free_eval", to: "application#free_eval"
  post "/eval", to: "application#free_eval_signup"
  get "/testimonials", to: "application#testimonials"
  get "/independent_trainers", to: "application#independent_trainers"
end

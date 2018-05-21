Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trn_budget_details
  resources :trn_performance_details
  resources :trn_manhr_details

end

ConvergeSE::Application.routes.draw do |map|
  resources :sessions

  root :to => "sessions#index"
end

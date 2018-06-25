Rails.application.routes.draw do
  resources :logs
  get 'log', to: 'logs#log'
end

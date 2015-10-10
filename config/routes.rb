Rails.application.routes.draw do
  root 'welcome#index'
  match '/websocket', to: ActionCable.server, via: [:get, :post]

  resource :session

  resources :rooms do
    resources :messages
  end
end

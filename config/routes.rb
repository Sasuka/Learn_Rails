Rails.application.routes.draw do
  match ':controller(/:action(/:id))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages', to: 'page#index'
  get 'demo', to: 'demo#index'
  get 'demo/hello', to: 'demo#hello'
  get 'demo/other_hello', to: 'demo#other_hello'
  get 'admin', :to => 'access#index'
end

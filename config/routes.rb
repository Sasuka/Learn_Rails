Rails.application.routes.draw do

  get 'sections/index'
  get 'sections/show'
  get 'sections/new'
  get 'sections/edit'
  get 'sections/delete'
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  get 'pages/delete'
  match ':controller(/:action(/:id))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'demo', to: 'demo#index'
  get 'demo/hello', to: 'demo#hello'
  get 'demo/other_hello', to: 'demo#other_hello'
end

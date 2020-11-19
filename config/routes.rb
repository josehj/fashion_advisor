Rails.application.routes.draw do
  resources :body_garments do
  end
  resources :garment_types
  resources :bodies
  resources :garment_attributes
  resources :fashion_style_garments
  resources :fashion_styles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  namespace :welcome do
    post :search
    get :accepted_attributes
  end

  match "*path" => "welcome#index", via: [:get, :post]

end

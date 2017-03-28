Rails.application.routes.draw do

  devise_for :organizations
  resources :zooos do
    scope module: :zooos do
      resources :animals, except: [:new, :create]
    end
  end

  root 'zooos#index'

  get 'animals/new', to: 'zooos/animals#new', as: 'new_animal'
  post 'animals', to: 'zooos/animals#create', as: 'create_animal'

end

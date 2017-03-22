Rails.application.routes.draw do

  resources :zooos do
    scope module: zooos do
      resources :animals
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

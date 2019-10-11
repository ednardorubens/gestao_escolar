Rails.application.routes.draw do

  scope path_names: { new: "novo", edit: "editar" } do
    resources :usuarios
  end
  
  root to: "usuarios#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

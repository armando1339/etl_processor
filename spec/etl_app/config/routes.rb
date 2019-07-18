Rails.application.routes.draw do
  resources :units do
    get :import, on: :collection
    get :reser_data, on: :collection
  end
end

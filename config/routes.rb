Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :auth_token, only:[:create] do
        post :refresh, on: :collection
        post :destryo, on: :collection
      end
    end
  end
end

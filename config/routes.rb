# frozen_string_literal: true

Rails.application.routes.draw do
  apipie
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :projects, except: :show do
        resources :tasks, except: :show do
          resources :comments, except: %i[show update]
        end
      end

      post 'users/sign_in'
      post 'users/sign_up'
      delete 'logout', to: 'users#destroy'
    end
  end
end
# delete 'logout', to: 'users#destroy'

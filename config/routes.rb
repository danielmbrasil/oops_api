# frozen_string_literal: true

Rails.application.routes.draw do
  default_url_options host: 'localhost:3000'

  namespace :api, defaults: { format: :json } do
    scope 'users' do
      resource :user, only: %i[show update]
    end
  end

  devise_for :users,
             defaults: { format: :json },
             path: '',
             path_names: {
               sign_in: 'api/login',
               sign_out: 'api/logout',
               registration: 'api/signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
end

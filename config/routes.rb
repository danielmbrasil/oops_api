# frozen_string_literal: true

Rails.application.routes.draw do
  default_url_options host: 'localhost:3000'

  namespace :api, defaults: { format: :json } do
    scope 'users' do
      resource :user, only: %i[show update]
      resource :statistic, only: %i[show update]
      resource :feedback, only: %i[create show]
      resource :answer, only: %i[create show]
    end

    get '/users/', to: 'users#index'

    resource :activity, only: :show
    resource :quiz, only: :show
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

# frozen_string_literal: true

require 'rails_helper'

describe Api::UsersController, type: :request do
  let(:user) { create_user }

  context 'When fetching a user' do
    before do
      login_with_api(user)
      get '/api/users/user', headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns the user' do
      expect(json['data']).to have_id(user.id.to_s)
      expect(json['data']).to have_type('users')
    end
  end

  context 'When the Authorization header is missing' do
    before do
      get '/api/users/user'
    end

    it 'returns 401' do
      expect(response.status).to eq(401)
    end
  end

  context 'When updating a users name' do
    before do
      login_with_api(user)
      put '/api/users/user', params: {
        user: {
          name: 'New name'
        }
      }, headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end
  end

  context 'When updating a users email' do
    before do
      login_with_api(user)
      put '/api/users/user', params: {
        user: {
          email: 'newemail@email.com'
        }
      }, headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end
  end

  context 'When updating both email and name' do
    before do
      login_with_api(user)
      put '/api/users/user', params: {
        user: {
          name: 'New name',
          email: 'newemail0@email.com'
        }
      }, headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end
  end

  context 'When updating with no params' do
    before do
      login_with_api(user)
      put '/api/users/user', params: {
        user: {
          name: ''
        }
      }, headers: {
        'Authorization': response.headers['Authorization']
      }
    end

    it 'returns 400' do
      expect(response.status).to eq(400)
    end
  end
end

# frozen_string_literal: true

module Api
  # This controller handles users' data.
  class UsersController < Api::BaseController
    before_action :find_user, only: %i[show update]

    def show
      render_jsonapi_response(@user)
    end

    def update
      @user.update(user_params)
      render_jsonapi_response(@user)
    end

    private

    def user_params
      params.require(:user).permit(:name, :email)
    end

    def find_user
      @user = current_user
    end
  end
end

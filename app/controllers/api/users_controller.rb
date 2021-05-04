# frozen_string_literal: true

module Api
  # This controller handles users' data.
  class UsersController < Api::BaseController
    before_action :find_user, only: %i[show]

    def show
      render_jsonapi_response(@user)
    end

    private

    def find_user
      @user = User.find(params[:id])
    end
  end
end

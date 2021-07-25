# frozen_string_literal: true

module Api
  # App's activities controller
  class ActivitiesController < Api::BaseController
    before_action :find_activity, only: :show

    def show
      render json: { status: 'success', message: 'Resource loaded', data: @activity }, status: 200
    end

    private

    def activity_params
      params.permit(:level_number)
    end

    def find_activity
      @activity = Level.joins(:activity).select(:title, :body, :xp).where(level_number: params[:level_number]).first
                       .attributes.slice('title', 'body', 'xp')
    end
  end
end

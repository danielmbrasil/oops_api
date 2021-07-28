# frozen_string_literal: true

module Api
  # Users feedback for activity controller
  class FeedbacksController < Api::BaseController
    before_action :find_activity, only: %i[create show]
    before_action :save_feedback, only: :create
    before_action :find_feedback, only: :show

    def show
      if !@feedback.nil?
        render json: { status: 'success', message: 'Resource loaded', data: @feedback.slice('grade') }, status: 200
      else
        render json: { status: 'error', message: 'Resource not found', data: nil }, status: 404
      end
    end

    def create
      if @feedback.persisted?
        render json: { status: 'success', message: 'Resource created', data: @feedback }, status: 201
      end
    end

    private

    def feedback_params
      params.permit(:grade, :level_number)
    end

    def find_activity
      level = Level.find_by(level_number: params[:level_number])
      @activity = level.activity
    end

    def save_feedback
      @feedback = Feedback.create(grade: params[:grade], user_id: current_user.id, activity_id: @activity.id)
    end

    def find_feedback
      @feedback = Feedback.where(user_id: current_user.id, activity_id: @activity.id).first
    end
  end
end

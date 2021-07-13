# frozen_string_literal: true

module Api
  # Quizzes controller
  class QuizzesController < Api::BaseController
    before_action :find_activity, only: :show
    before_action :find_quiz, only: :show

    def show
      render json: { status: 'success', message: 'Resource loaded', data: @quiz.questions }, status: 200
    end

    private

    def quiz_params
      params.permit(:level_number)
    end

    def find_activity
      level = Level.find_by(level_number: params[:level_number])
      @activity = level.activity
    end

    def find_quiz
      @quiz = Quiz.where(activity_id: @activity.id).first
    end
  end
end

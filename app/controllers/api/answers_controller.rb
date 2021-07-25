# frozen_string_literal: true

module Api
  # User's answers controller
  class AnswersController < Api::BaseController
    before_action :find_activity, only: %i[create show]
    before_action :find_quiz, only: %i[create show]
    before_action :set_answer, only: %i[create]
    before_action :find_answer, only: %i[show]

    def create
      render json: { status: 'success', message: 'Resource created', data: @answer }, status: 201 if @answer.save
    end

    def show
      if @answer.nil?
        render json: { status: 'error', message: 'Resource not found', data: @answer }, status: 404
      else
        render json: { status: 'success', message: 'Resource loaded', data: @answer }, status: 200
      end
    end

    private

    def answer_params
      params.permit(:level_number)
    end

    def find_activity
      level = Level.find_by(level_number: params[:level_number])
      @activity = level.activity unless level.nil?
    end

    def find_quiz
      @quiz = Quiz.where(activity_id: @activity.id).first unless @activity.nil?
    end

    def set_answer
      return if @quiz.nil?

      @answer = Answer.create(user_id: current_user.id, quiz_id: @quiz.id)
    end

    def find_answer
      return if @quiz.nil?

      @answer = Answer.where(user_id: current_user.id, quiz_id: @quiz.id).first
    end
  end
end


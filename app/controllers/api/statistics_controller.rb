# frozen_string_literal: true

module Api
  # Users Statistics Controller
  class StatisticsController < Api::BaseController
    before_action :set_response, only: :show
    before_action :find_statistics, only: :update

    def update
      @statistic.update_attribute(:xp, @statistic.xp + params[:xp].to_i)
      @statistic.update_attribute(:correct_answers, @statistic.correct_answers + params[:correct_answers].to_i)
      @statistic.update_attribute(:current_level, @statistic.current_level + 1)
      render json: { status: 'success', message: 'Resource updated', data: @statistic }, status: 200 if @statistic.save
    end

    def show
      render json: { status: 'success', message: 'Resource loaded', data: @statistic }, status: 200
    end

    private

    def statistic_params
      params.permit(:xp, :correct_answers)
    end

    def set_response
      @statistic = User.joins(:statistic).select(:xp, :correct_answers, :current_level).where(id: current_user.id).first
                       .attributes.slice('xp', 'current_level', 'correct_answers')
    end

    def find_statistics
      @statistic = Statistic.find_by(user_id: current_user.id)
    end
  end
end

# frozen_string_literal: true

# This controller handle users' sign-up. It inherits from Devise's RegistrationController.
class RegistrationsController < Devise::RegistrationsController
  after_action :create_user_statistic, only: :create

  def create
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    render_jsonapi_response(resource)
  end

  private

  def create_user_statistic
    return unless resource.persisted?

    Statistic.create(xp: 0, correct_answers: 0, current_level: 0, user_id: resource.id)
  end
end

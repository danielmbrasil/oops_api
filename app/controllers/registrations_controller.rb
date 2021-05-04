# frozen_string_literal: true

# This controller handle users' sign-up. It inherits from Devise's RegistrationController.
class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    render_jsonapi_response(resource)
  end
end

# frozen_string_literal: true

# This controller handles sessions (users sign-in).
# It inherits from Devise's SessionsController.
class SessionsController < Devise::SessionsController
  private

  def respond_with(resource, _opts = {})
    render_jsonapi_response(resource)
  end

  def respond_to_on_destroy
    head :no_content
  end
end

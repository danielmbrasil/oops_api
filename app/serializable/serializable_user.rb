# frozen_string_literal: true

# Defines what attributes are returned in JSON.
class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :email, :name

  link :self do
    @url_helpers.api_user_url(@object.id)
  end
end

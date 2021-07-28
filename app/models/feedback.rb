# frozen_string_literal: true

class Feedback < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :activity
end

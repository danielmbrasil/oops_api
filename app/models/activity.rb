# frozen_string_literal: true

class Activity < ApplicationRecord
  belongs_to :level

  has_many :feedbacks
  has_one :quiz
end

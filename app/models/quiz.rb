# frozen_string_literal: true

class Quiz < ApplicationRecord
  belongs_to :activity
  has_many :questions
  has_many :answers
end

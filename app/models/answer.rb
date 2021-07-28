# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :quiz, dependent: :destroy
end

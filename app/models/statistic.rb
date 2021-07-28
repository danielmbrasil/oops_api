# frozen_string_literal: true

class Statistic < ApplicationRecord
  belongs_to :user, dependent: :destroy
end

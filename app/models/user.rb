# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_one :statistic
  has_many :feedbacks
  has_many :answers

  validates_presence_of :name
  validates :name, format: { with: /\A[^0-9`!@#$%^&*+_=]+\z/ }

  validates_format_of :password, with: /\A(?=.*[A-Z].*)(?=.*[0-9].*)(?=.*[a-z].*).{6,64}\z/,
                                 if: :encrypted_password_changed?
end

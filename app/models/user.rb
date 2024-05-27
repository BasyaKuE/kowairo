# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :user_animes
  has_many :animes, through: :user_animes

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end

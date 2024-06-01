# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }
  has_many :user_animes
  has_many :animes, through: :user_animes
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end

# frozen_string_literal: true

class UserAnime < ApplicationRecord
  belongs_to :user
  belongs_to :anime

  validates :priority, presence: true
end

# frozen_string_literal: true

class Anime < ApplicationRecord
  has_many :anime_voice_actors
  has_many :voice_actors, through: :anime_voice_actors
  has_many :user_animes
  has_many :users, through: :user_animes

  validates :title, presence: true
end

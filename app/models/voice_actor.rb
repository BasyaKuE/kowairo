# frozen_string_literal: true

class VoiceActor < ApplicationRecord
  has_many :anime_voice_actors
  has_many :animes, through: :anime_voice_actors

  validates :name, presence: true
end

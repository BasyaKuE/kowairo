# frozen_string_literal: true

class AnimeVoiceActor < ApplicationRecord
  belongs_to :anime
  belongs_to :voice_actor
end

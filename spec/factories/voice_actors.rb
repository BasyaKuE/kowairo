# frozen_string_literal: true

FactoryBot.define do
  factory :voice_actor do
    name { 'Test Voice Actor' }
    bio { 'Bio of the test voice actor' }
    birthdate { '1980-01-01' }
  end
end

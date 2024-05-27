# frozen_string_literal: true

FactoryBot.define do
  factory :user_anime do
    user
    anime
    priority { 1 }
  end
end

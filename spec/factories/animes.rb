# frozen_string_literal: true

FactoryBot.define do
  factory :anime do
    title { 'Test Anime' }
    description { 'Description of the test anime' }
    release_date { '2020-01-01' }
  end
end

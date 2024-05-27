# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserAnime do
  it 'is valid with valid attributes' do
    user_anime = build(:user_anime)
    expect(user_anime).to be_valid
  end

  it 'is not valid without a priority' do
    user_anime = build(:user_anime, priority: nil)
    expect(user_anime).not_to be_valid
  end
end

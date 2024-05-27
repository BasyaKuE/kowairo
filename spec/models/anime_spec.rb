# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Anime do
  it 'is valid with valid attributes' do
    anime = build(:anime)
    expect(anime).to be_valid
  end

  it 'is not valid without a title' do
    anime = build(:anime, title: nil)
    expect(anime).not_to be_valid
  end
end

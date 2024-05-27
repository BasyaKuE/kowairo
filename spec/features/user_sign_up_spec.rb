# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'UserSignUps' do
  it 'User signs up' do
    visit signup_path

    fill_in 'Name', with: 'Test User'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content('Welcome to Kowairo!')
  end
end

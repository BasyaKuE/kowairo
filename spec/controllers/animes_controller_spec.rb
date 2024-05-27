# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AnimesController do
  before do
    @user = create(:user)
    session[:user_id] = @user.id
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @animes' do
      anime = create(:anime)
      create(:user_anime, user: @user, anime:, priority: 1) # priorityを追加
      get :index
      expect(assigns(:animes)).to eq([anime])
    end
  end
end

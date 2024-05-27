# frozen_string_literal: true

class AnimesController < ApplicationController
  before_action :set_user, only: [:index]

  def index
    @animes = @user.animes.order('user_animes.priority DESC')
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes' do
  describe 'GET /' do # ルートパスを修正
    it 'returns http success' do
      get root_path # ルートパスを使用
      expect(response).to have_http_status(:success)
    end
  end
end

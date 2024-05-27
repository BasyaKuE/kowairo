# frozen_string_literal: true

require 'rails_helper'

RSpec.describe VoiceActor do
  it 'is valid with valid attributes' do
    voice_actor = build(:voice_actor)
    expect(voice_actor).to be_valid
  end

  it 'is not valid without a name' do
    voice_actor = build(:voice_actor, name: nil)
    expect(voice_actor).not_to be_valid
  end
end

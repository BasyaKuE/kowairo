# frozen_string_literal: true

class CreateAnimeVoiceActors < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_voice_actors do |t|
      t.references :anime, null: false, foreign_key: true
      t.references :voice_actor, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end

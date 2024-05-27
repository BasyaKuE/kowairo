# frozen_string_literal: true

class CreateVoiceActors < ActiveRecord::Migration[7.0]
  def change
    create_table :voice_actors do |t|
      t.string :name
      t.text :bio
      t.date :birthdate

      t.timestamps
    end
  end
end

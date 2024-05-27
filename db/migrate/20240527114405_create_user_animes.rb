# frozen_string_literal: true

class CreateUserAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_animes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true
      t.integer :priority

      t.timestamps
    end
  end
end

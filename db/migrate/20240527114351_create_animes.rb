# frozen_string_literal: true

class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.text :description
      t.date :release_date

      t.timestamps
    end
  end
end

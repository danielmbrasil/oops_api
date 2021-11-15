# frozen_string_literal: true

class AddActivitiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title, limit: 512
      t.text :body
      t.integer :xp

      t.references :level, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end

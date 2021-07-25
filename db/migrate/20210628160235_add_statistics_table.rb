# frozen_string_literal: true

class AddStatisticsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :statistics do |t|
      t.integer :xp
      t.integer :correct_answers
      t.integer :current_level

      t.references :user, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

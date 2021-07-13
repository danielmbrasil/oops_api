# frozen_string_literal: true

class AddLevelsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.integer :level_number

      t.timestamps null: false
    end
  end
end

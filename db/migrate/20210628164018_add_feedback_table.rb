# frozen_string_literal: true

class AddFeedbackTable < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.integer :grade

      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end

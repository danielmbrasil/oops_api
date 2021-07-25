# frozen_string_literal: true

# Register if user completed a quiz
class AddAnswersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end

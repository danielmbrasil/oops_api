# frozen_string_literal: true

class AddQuestionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title, limit: 80
      t.integer :question_number
      t.integer :xp
      t.integer :question_type
      t.string :correct_answer

      t.string :option_a, limit: 80
      t.string :option_b, limit: 80
      t.string :option_c, limit: 80
      t.string :option_d, limit: 80

      t.references :quiz, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end

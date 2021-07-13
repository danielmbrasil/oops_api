# frozen_string_literal: true

class AddQuizTable < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.integer :quiz_number

      t.references :activity, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end

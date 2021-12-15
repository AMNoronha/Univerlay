class CreateLessonSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_steps do |t|
      t.references :lesson, null: false, foreign_key: true
      t.string :pop_up_text
      t.integer :sequence
      t.string :url

      t.timestamps
    end
  end
end

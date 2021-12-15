class CreateLessonProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.integer :current_step

      t.timestamps
    end
  end
end

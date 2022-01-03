class AddTitleToLessonSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_steps, :title, :string
  end
end

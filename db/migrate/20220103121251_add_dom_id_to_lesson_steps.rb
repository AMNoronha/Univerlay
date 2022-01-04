class AddDomIdToLessonSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_steps, :DOM_Id, :string
  end
end

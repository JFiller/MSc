class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.boolean :deleted

      t.timestamps
    end
  end
end

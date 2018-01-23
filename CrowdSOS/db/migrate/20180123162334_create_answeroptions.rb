class CreateAnsweroptions < ActiveRecord::Migration[5.1]
  def change
    create_table :answeroptions do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content
      t.boolean :selected
      t.boolean :deleted

      t.timestamps
    end
  end
end

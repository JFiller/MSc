class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :mentoring, foreign_key: true
      t.references :user, foreign_key: true
      t.string :role
      t.boolean :deleted

      t.timestamps
    end
  end
end

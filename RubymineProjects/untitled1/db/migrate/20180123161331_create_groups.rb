class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.date :date
      t.boolean :deleted

      t.timestamps
    end
  end
end

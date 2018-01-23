class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.string :name
      t.string :username
      t.text :content
      t.date :date
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.string :type
      t.boolean :deleted

      t.timestamps
    end
  end
end

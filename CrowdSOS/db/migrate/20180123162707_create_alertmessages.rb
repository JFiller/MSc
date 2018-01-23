class CreateAlertmessages < ActiveRecord::Migration[5.1]
  def change
    create_table :alertmessages do |t|
      t.references :alert, foreign_key: true
      t.string :description
      t.boolean :deleted

      t.timestamps
    end
  end
end

class CreateAlertsubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :alertsubscriptions do |t|
      t.references :user, foreign_key: true
      t.references :alert, foreign_key: true
      t.boolean :deleted

      t.timestamps
    end
  end
end

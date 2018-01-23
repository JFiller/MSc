class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :user, foreign_key: true
      t.references :contribution, foreign_key: true
      t.boolean :deleted

      t.timestamps
    end
  end
end

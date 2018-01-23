class CreateUseralerts < ActiveRecord::Migration[5.1]
  def change
    create_table :useralerts do |t|
      t.references :user, foreign_key: true
      t.references :alertmessage, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :username
      t.references :user, foreign_key: true
      t.text :content
      t.date :date
      t.integer :vote_counter
      t.boolean :deleted

      t.timestamps
    end
  end
end
